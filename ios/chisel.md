# Chisel

## under the hood

```python
class FBCommandArgument:
    def __init__(self, short='', long='', arg='', type='', help='', default='', boolean=False):
        self.shortName = short
        self.longName = long
        self.argName = arg
        self.argType = type
        self.help = help
        self.default = default
        self.boolean = boolean
```

```python
class FBCommand:
    def name(self):
        return None

    def options(self):
        return []

    def args(self):
        return []

    def description(self):
        return ''

    def lex(self, commandLine):
        return shlex.split(commandLine)

    def run(self, arguments, option):
        pass
```

```Python
class FBPrintViewHierarchyCommand(fb.FBCommand):
    def name(self):
        return 'pviews'

    def description(self):
        return 'Print the recursion description of <aView>.'

    def options(self):
        return [
            fb.FBCommandArgument(short='-u', long='--up', arg='upwards', boolean=True, default=False, help='Print only the hierarchy directly above the view, up to its window.'),
            fb.FBCommandArgument(short='-d', long='--depth', arg='depth', type='int', default="0", help='Print only to a given depth. 0 indicates infinite depth.'),
        ]

    def args(self):
        return [ fb.FBCommandArgument(arg='aView', type='UIView*/NSView*', help='The view to print the description of.', default='__keyWindow_dynamic__') ]

    def run(self, arguments, options):
        maxDepth = int(options.depth)
        isMac = runtimeHelpers.isMacintoshArch()

        if arguments[0] == '__keyWindow_dynamic__':
            arguments[0] = '(id)[[UIApplication sharedApplication] keyWindow]'

            if isMac:
                arguments[0] = '(id)[[[[NSApplication sharedApplication] windows] objectAtIndex:0] contentView]'

        if options.upwards:
            view = arguments[0]
            description = viewHelpers.upwardsRecursiveDescription(view, maxDepth)
            if description:
                print description
            else:
                print 'Failed to walk view hierarchy. Make sure you pass a view, not any other kind of object or expression.'
        else:
            printingMethod = 'recursiveDescription'
            if isMac:
                printingMethod = '_subtreeDescription'

            description = fb.evaluateExpressionValue('(id)[' + arguments[0] + ' ' + printingMethod + ']').GetObjectDescription()
            if maxDepth > 0:
                separator = re.escape("   | ")
                prefixToRemove = separator * maxDepth + " "
                description += "\n"
                description = re.sub(r'%s.*\n' % (prefixToRemove), r'', description)
            print description
            ```

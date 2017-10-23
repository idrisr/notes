# Semantic Versioning

from https://www.youtube.com/watch?v=x4ARXyovvPc

## patch number
bug fixes that dont break backward compatibility  
number on right

## minor number
minor releases that dont break backward compatibility  
new feature  
number in middle

## major number
change signatures etc, but not backward compatibility  
number on left

if you use the `~>` thing, then you're saying update me up and until that version

`~> 1.4.1` update me to anything like `1.4.X`  
`~> 1.4` update me to anything under `1.X`  
`~> 1` update me to anything. At this point dont even use it cause makes no difference

# Ruby

### `module`
* [readme](https://learnrubythehardway.org/book/ex40.html)

* [readme](https://ruby-doc.org/core-2.6/Module.html)

You can think about a `module` 
* as a specialized hash that can store Ruby code
* so you can access it with the `.` operator. 
* Ruby also has another construct
that serves a similar purpose called a `class`. 
* A `class` is a way to take a grouping of functions and data and place them inside a container so you can access them with the `.` (dot) operator.



### `require`

```ruby
module Fastlane
  module Actions
    require 'fastlane/actions/frame_screenshots'
    class FrameitAction < FrameScreenshotsAction
      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Alias for the `frame_screenshots` action"
      end
    end
  end
end
```

### `attr_accessor`
from [here](https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)

#### `attr_reader`
* creates read only property

#### `attr_writer`
* creates write only property

#### `and attr_accessor`
* creates read - write only property
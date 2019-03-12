# Ruby

[building blocks](https://yehudakatz.com/2010/02/07/the-building-blocks-of-ruby/)

[swift and ruby](http://khanlou.com/2016/08/my-least-favorite-thing-about-swift/)


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

#### `attr_accessor`
* creates read - write only property

### `let` and `let!`
* [readme](http://www.betterspecs.org/#let)
* it's an `rspec` thing

## `::`

The `::` is a unary operator that allows: 
* constants, 
* instance methods and 
* class methods 

defined within a `class` or `module`, to be accessed from anywhere outside
the `class` or `module`.

## `include` and `extend`

### `include`

`include` is for adding methods to an instance of a class

### `extend`

`extend` is for adding class methods

### `instance_eval`

###  `method!`
* Bang methods end with an exlamation mark, and often modify the object they are called on.
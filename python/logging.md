# `logging`

https://www.youtube.com/watch?v=24_4WWkSmNo

https://docs.python.org/3/library/logging.html#module-logging

https://github.com/gmr/pycon2013-logging

## why use it?
* highly configurable
* configurable destinations
* configurable formatting
* filterable content
* trigger alerts

## levels
* debug
* info
* warning
* error
* critical

## records
core of logging

contains all attributes of message when it goes in

## loggers
overlooked the most

create your own logger. app specific and namespace specific

point of entry for all messages

what gives namespace partitions

### root logger
parent logger

everything is a child logger

## handlers
deliver messages to their destination

assigned a formatter and any filters

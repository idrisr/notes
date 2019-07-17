# `NSRegularExpression`

## `NSTextCheckingResult`
* An occurrence of textual content found during the analysis of a block of text, 
* such as when matching a regular expression.

* instances of `NSTextCheckingResult` are returned by the `NSRegularExpression`
class and the `NSDataDetector` class to indicate the discovery of content. 
* In those cases, what is found may be a match for a 
    * regular expression or 
    * a date,
    * address, 
    * phone number, 
    * and so on.

## `NSDataDetector`
A specialized regular expression object that matches natural language text for predefined data patterns.
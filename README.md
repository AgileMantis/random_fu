random_fu 
=========

A Ruby gem to add random capability.  Currently, only for Strings.

Setup
=====

Simply <pre>require_relative 'random_fu.rb'</pre> 

## String Usage

### String#random(count)

Produces a random string the size of count created from only the characters in the string.  NOTE, characters may repeat and
not all characters in the string will probably be used.  The String is just a source of possible characters.  To place a 
string in a random order, use the soon to be created String#random_order.

Example, "abcd".random(n) could result in just one letter used multiple times:

     "abcd".random(2)
     # => "dd"

#### Examples:

To produce a random character from the alphabet:

    "abcdefghijklmnopqrstuvwxyz".random(1)
    # => "d"

To produce a 20 character random string from the alphabet:

    "abcdefghijklmnopqrstuvwxyz".random(20)
    # => "ijvrvddrwgucdsyzybfq"

License
=======

random_fu is Copyright © 2012 Ledsworth Consulting LLC.  It is free software, and may be 
redistributed under the terms specified in the MIT-LICENSE file. 

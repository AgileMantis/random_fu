Random_fu 
=========

 A Ruby gem to add random capability.  Currently, only for Strings and Hashes.  Tested with 
ruby 1.9.2 and RSpec 2.10

DO NOT USE for generating any data related to security!!!  
---------------------------------------------------------
There are better, more secure, methods for this.  This gem is meant ONLY for non secure
random strings.

Installation
============

Random_fu will soon be distributed as a ruby gem (not yet published, in dev).  Simply require it in your Gemfile.

    gem "random_fu"

## Usage

## Strings
----------
## String#random_order

Returns a random string created from the characters in the string.  Characters in the string are used only once, and the result
will be the same length.  The result is simply a jumbled version.

### Examples:

    "abc".random_order
    # => "cba"
    
    "abcdef".random_order[0]    # Random letter between a and f
    # => "b"

    "abcdef".random_order[0,2]  # Two random letters between a and f
    # => "eb"

## String#random(count)

Returns a random string the size of count created from the characters in the string.  Characters are used one or more times, and
characters may repeat and/or not be used at all.  The source string is just a list of possible characters (to place a 
string in a random order, use String#random_order).  For example, "abcd".random(n) could result in 
just one letter used multiple times:

     "abcd".random(2)
     # => "dd"

### Examples:

To produce a random character from the alphabet:

    "abcdefghijklmnopqrstuvwxyz".random(1)
    # => "d"

    ("a".."z").to_a.join.random(1)
    # => "j"

To produce a 20 character random string from the alphabet:

    "abcdefghijklmnopqrstuvwxyz".random(20)
    # => "ijvrvddrwgucdsyzybfq"

## Hashs
--------------
## Hash#random
Returns the value from a random key.  If called on an empty hash, returns nil.

### Examples:

    hash = { first_base: 'fred', second_base: 'tom', pitcher: 'jen' }
    hash.random
    # => "jen"
    
    {}.random
    # => nil

License
=======

random_fu is Copyright © 2012 Ledsworth Consulting LLC.  It is free software, and may be 
redistributed under the terms specified in the MIT-LICENSE file. 

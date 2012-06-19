random_fu 
=========

A Ruby gem to add random capability.  Currently, only for Strings.

Setup
=====

Simply <pre>require_relative 'random_fu.rb'</pre> 

### String Usage

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

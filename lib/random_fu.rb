require_relative 'random_fu/version'
require_relative 'random_fu/string'
require_relative 'random_fu/hash'

String.send :include, RandomFu::StringInstanceMethods
Hash.send :include, RandomFu::HashInstanceMethods

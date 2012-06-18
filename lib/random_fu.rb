require_relative 'random_fu/version'
require_relative 'random_fu/string'

String.send :include, RandomFu::StringInstanceMethods

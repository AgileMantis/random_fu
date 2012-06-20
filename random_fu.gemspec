$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'random_fu/version.rb'

Gem::Specification.new do |s|
  s.name = "random_fu"
  s.summary = "Random helpers"
  s.version = RandomFu::VERSION
  s.author = "Brian Ledsworth of Ledsworth Consluting LLC"
  s.description = "Incorprate random helpers into your app"
  s.email = ["brian@ledsworth.com"]
  s.homepage = "https://github.com/AgileMantis/random_fu"
  s.required_ruby_version = '>= 1.9.2'
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  # s.has_rdoc = false
  # s.add_development_dependency('rspec')
  # s.platform = Gem::Platform::RUBY
end

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
  # s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.3'
  # s.files = Dir['**/**'] 
  # s.test_files = Dir['spec/*_spec.rb'] 
  # s.has_rdoc = false

  s.add_development_dependency('rspec')
end

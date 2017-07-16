$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "livecoderesult/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "livecoderesult"
  s.version     = Livecoderesult::VERSION
  s.authors     = ["Marko Scheller"]
  s.email       = ["marko@awdesigner.de"]
  s.homepage    = "http://www.schelcom.de"
  s.summary     = "Summary of Livecoderesult."
  s.description = "Description of Livecoderesult."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end

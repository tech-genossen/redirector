$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redirector/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redirector"
  s.version     = Redirector::VERSION
  s.authors     = ["Brian Landau"]
  s.email       = ["brian.landau@viget.com"]
  s.homepage    = "https://github.com/vigetlabs/redirector"
  s.summary     = "A Rails engine that adds a piece of middleware to the top of your middleware stack that looks for redirect rules stored in your database and redirects you accordingly."
  s.description = "A Rails engine that adds a piece of middleware to the top of your middleware stack that looks for redirect rules stored in your database and redirects you accordingly."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile",
    "README.md", "redirector.gemspec", "HISTORY"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 3.1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"
  s.add_development_dependency 'rspec-rails', '~> 3.7'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara', '~> 2.2'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot_rails', '~> 4.4'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'coveralls'
end

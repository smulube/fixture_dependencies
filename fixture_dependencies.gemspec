spec = Gem::Specification.new do |s| 
  s.name = "fixture_dependencies"
  s.version = "1.2.4"
  s.authors = ["Jeremy Evans", "Sam Mulube"]
  s.email = ["code@jeremyevans.net", "sam@mulube.com"]
  s.platform = Gem::Platform::RUBY
  s.summary = "Sequel/ActiveRecord fixture loader that handles dependency graphs. Supports dynamic ERb fixtures."
  s.description = <<-EOF
fixture_dependencies is an advanced fixture loader for ActiveRecord and Sequel, 
allowing the loading of models from YAML fixtures, along with their entire 
dependency graph.  It has the following features:

- Fixtures specify association names instead of foreign keys
- Support both Sequel and ActiveRecord
- Supports many_to_one/belongs_to, one_to_many/has_many,
  many_to_many/has_and_belongs_to_many, and has_one associations
- Loads a fixture's dependency graph in such a manner that foreign key
  constraints aren't violated
- Has a very simple API (FixtureDependencies.load(:model__fixture))
- Handles almost all cyclic dependencies
- Includes Rails and Sequel test helpers for Test::Unit (and a Sequel test
  helper for RSpec) that load fixtures for every test inside a transaction,
  so fixture data is never left in your database
- Adds dynamic fixtures (similar to ActiveRecord) with ERb.
EOF
  s.files = ["README", "LICENSE", "lib/fixture_dependencies.rb", "lib/fixture_dependencies_test_help.rb", "lib/fixture_dependencies/sequel.rb", "lib/fixture_dependencies/active_record.rb", "lib/fixture_dependencies/test_unit.rb", "lib/fixture_dependencies/test_unit/rails.rb", "lib/fixture_dependencies/test_unit/sequel.rb", "lib/fixture_dependencies/rspec/sequel.rb"]
  s.extra_rdoc_files = ["LICENSE"]
  s.require_paths = ["lib"]
  s.has_rdoc = true
  s.rdoc_options = %w'--inline-source --line-numbers README lib'
end

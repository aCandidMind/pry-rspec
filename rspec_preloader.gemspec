Gem::Specification.new do |gem|
  gem.name        = 'pry-rspec'
  gem.version     = '0.0.0'
  gem.licenses    = ['MIT']
  gem.summary     = "A fast TDD workflow with pry and rspec"
  gem.description = "Inspired by Joel Turnbull's Debugger Driven Development talk"
  gem.authors     = ["Victor Mours"]
  gem.email       = 'victor.mours@gmail.com'
  gem.files       = Dir["lib/**/*.rb"]
  gem.executables = []
  gem.homepage    = 'https://github.com/victormours/rspec-pry'

  gem.add_runtime_dependency "pry"
  gem.add_runtime_dependency "pry-rescue"
  gem.add_runtime_dependency "pry-stack_explorer"
end

Gem::Specification.new do |s|
  s.name        = 'konfident'
  s.version     = '0.1.0'
  s.date        = '2015-10-19'
  s.summary     = "Konfident"
  s.description = "A simple gem to check git conventions"
  s.authors     = ["Kasia Kasprzak"]
  s.email       = 'kasia.k@nukomeet.com'
  s.files       = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.test_files  = s.files.grep(%r{^(test)/})
  s.executables << 'konfident'
  s.homepage    =
    'http://rubygems.org/gems/konfident'
  s.license       = 'MIT'
  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "minitest"
  s.add_development_dependency "rake", "~> 10.0"
end
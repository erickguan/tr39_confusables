Gem::Specification.new do |s|
  s.name        = 'tr39_confusables'
  s.version     = '0.1.2'
  s.date        = '2015-10-10'
  s.summary     = 'Rubygem implements Skeleton algorithm from Unicode TR39 to dectect Unicode confusables.'
  s.description = 'Rubygem implements Skeleton algorithm from Unicode TR39 to dectect Unicode confusables.'
  s.authors     = ['Erick Guan']
  s.email       = 'fantasticfears@gmail.com'
  s.files       = ['lib/tr39_confusables.rb', 'lib/confusables']
  s.homepage    = 'https://github.com/fantasticfears/tr39_confusables'
  s.license     = 'MIT'
  s.add_runtime_dependency 'unf', ['~> 0.1']
end

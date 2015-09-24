Gem::Specification.new do |s|
  s.name        = 'tr39_confusables'
  s.version     = '0.1.0'
  s.date        = '2015-09-24'
  s.summary     = 'Rubygem implements Skeleton algorithm from Unicode TR39 to dectect Unicode confusables.'
  s.description = 'Rubygem implements Skeleton algorithm from Unicode TR39 to dectect Unicode confusables.'
  s.authors     = ['Erick Guan']
  s.email       = 'fantasticfears@gmail.com'
  s.files       = ['lib/tr39_confusables.rb']
  s.homepage    = 'https://github.com/fantasticfears/tr39_confusables'
  s.license     = 'MIT'
  s.add_runtime_dependency 'unf', ['~> 0.1']
end

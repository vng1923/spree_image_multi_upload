# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_image_multi_upload'
  s.version     = '1.0.0'
  s.summary     = %q{Advanced product images uploader}
  s.description = %q{Allow Spree to upload multi product images at the same time}
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Huy Nguyen'
  s.email     = 'huyngvu@gmail.com'
  s.homepage  = 'https://github.com/huyngvu/spree_image_multi_upload'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3'

  s.add_development_dependency 'capybara'#, '~> 1.1.2'
  s.add_development_dependency 'factory_girl'#, '~> 2.6.4'
  s.add_development_dependency 'rspec-rails'#,  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end

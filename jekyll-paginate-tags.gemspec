lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-paginate-tags/version.rb'


Gem::Specification.new do |s|
  s.name        = "jekyll-paginate-tags"
  s.summary     = "Generate Pagination for Jekyll tags."
  s.description = "Automatically generate pagination for each tag"
  s.version     = Jekyll::Paginate::Tags::VERSION
  #s.version     = "2.0.4"
  s.authors     = ["Kenta Ng"]
  s.email       = ["dev@kentaccn.com"]

  s.homepage    = "https://github.com/kentaccn/jekyll-paginate-tags"
  s.licenses    = ["MIT"]
  s.files       = ["lib/jekyll-paginate-tags.rb", "lib/jekyll-paginate-tags/tag-page.rb", "lib/jekyll-paginate-tags/pager.rb"]

  s.add_dependency "jekyll", '>= 2.5'
  s.add_dependency "jekyll-paginate", "~> 1.1"

  s.add_development_dependency  'rake', '~> 0'
end

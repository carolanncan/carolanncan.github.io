activate :deploy do |deploy|
  deploy.branch   = "gh-pages"
  #deploy.build_before = true
  deploy.method = :git
end

activate :livereload

set :build_dir, "tmp"
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "gh-pages"
  deploy.strategy = :force_push
  deploy.build_before = true
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-37617323-1'
  ga.domain_name = 'carolannbonner.com'
end

activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

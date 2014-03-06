###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/index.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Markdown engine configuration
set :markdown_engine, :kramdown
set :markdown,  :layout_engine => :erb,
                # Use automatic header ID generation
                :auto_ids => true,
                # Parse markdown everywhere
                :parse_block_html => true,
                :parse_span_html => true,
                # Better punctuation
                :smartypants => true,
                # Syntax highlighting (does not work for some reason...)
                :enable_coderay => true,
                :coderay_line_numbers => :inline

# Assets directories
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
# set :layouts_dir, 'assets/layouts'
# NB: bug in the current version
set :partials_dir, 'layouts'

# Relative and clean URLs
# set :relative_links, true
# activate :relative_assets
activate :directory_indexes

# Automatic navigation through middleman-navigation
activate :navigation

# Deployment plugin
activate :deploy do |deploy|
  deploy.build_before = false # default: false
  deploy.method = :rsync
  deploy.host   = "oceane.obs-vlfr.fr"
  deploy.path   = "~/public_html/v2"
  # Optional Settings
  deploy.user  = "irisson" # no default
  # deploy.port  = 5309 # ssh port, default: 22
  # deploy.clean = true # remove orphaned files on remote host, default: false
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

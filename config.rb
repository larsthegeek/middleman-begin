######################################################################
# General settings.
######################################################################

set :meta, {
  title: '',
  description: '',
  author: '',
  url: 'http://foo.bar' # include http://
}

# Syntax highlighting.
activate :syntax
set :syntax_theme, Rouge::Themes::Base16::Solarized
# Fixes whitespace in syntax highlighting.
set :haml, ugly: true

# Change to your Disqus shortname.
# To Disable Disqus, leave unset or set to nil
# TODO: extract to MM extension
set :disqus_shortname, nil

# Change to your Google Analytics key (e.g. UA-XXXXX-Y).
# To disable GA, leave unset or set to nil
# Code will only be injected in build environment
# TODO: extract to MM extension
set :ga_key, nil

# Locations.
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'partials'


######################################################################
# Blog settings.
######################################################################

Time.zone = "Amsterdam"

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.permalink = ':year/:month/:title.html'
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.taglink = "tags/:tag.html"
  # blog.layout = "blog/post.html"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"

  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"

  # blog.paginate = true
  # blog.per_page = 5
  # blog.page_link = "page/:num"

  page "/feed.xml", :layout => false
end


######################################################################
# Development environment.
######################################################################

configure :development do
  activate :livereload
end


######################################################################
# Build environment.
######################################################################

configure :build do
  activate :relative_assets
  activate :directory_indexes
  activate :asset_hash

  # ignores
  ignore 'assets/stylesheets/vendor/*'

  # Ensmallen assets
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  activate :image_optim
  activate :gzip
end

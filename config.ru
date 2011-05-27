require "rubygems"
require 'rack/contrib'
require 'rack-rewrite'

use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/euruko.html'
end
run Rack::Directory.new('site')
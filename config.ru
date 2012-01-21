require 'rubygems'

require (File.join(File.dirname(__FILE__), 'controllers', 'baseapp'))

map "/assets" do
  run Rack::Directory.new("#{File.join(File.dirname(__FILE__), 'assets')}")
end

map "/" do
  run BaseApp
end

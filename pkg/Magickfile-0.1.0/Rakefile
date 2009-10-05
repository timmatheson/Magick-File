require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('Magickfile', '0.1.0') do |p|
  p.description              = "Extends the ruby file class with methods to determine dimensions and methods for rotating an image ect."
  p.url                      = "http://www.timmatheson.com"
  p.author                   = "Tim Matheson"
  p.email                    = "me@timmatheson.com"
  p.ignore_pattern           = ["tmp/*","script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

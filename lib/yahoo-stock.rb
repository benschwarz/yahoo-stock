# Yahoo Stock "API wrapper"


# Dependencies
require 'rubygems'
require 'hpricot'
require 'open-uri'

# We're only going to access price right now
# additional properties can be mapped with a simple
# method and selector change.

module Yahoo
  class Stock
    VERSION = '0.0.2'
    BASE_URI = 'http://finance.yahoo.com/q?s='
  end
end

# Classes
%w(query base).each{|r| require(File.join(File.dirname(__FILE__), File.basename(__FILE__, '.rb'), r))}

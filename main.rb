require 'pry'
require "rubypython"

puts "Welcome to the RubyPython Interpreter Page"
puts "\n"

# WARNING: According to this guy here: 
# https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from
# ...RubyPython has a habbit of crashing $ rails server (Ruby on Rails)

# This is the RubyPython Ruby #start method that will start the Python interpreter.
RubyPython.start 

puts "You are now running the RubyPython interpreter" 
puts "\n"

# This is the RubyPython Ruby #end method that will end the Python interpreter.
RubyPython.stop
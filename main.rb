require 'pry'
require "rubypython"

puts "Welcome to the RubyPython Interpreter Page"
puts "\n"

# WARNING: According to this guy here: 
# https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from
# ...RubyPython has a habbit of crashing $ rails server (Ruby on Rails)

# This is the RubyPython Ruby #start method that will start the Python interpreter.
RubyPython.start 

# This will check to make sure the #start method is working properly.
# If this fails, you may need to install jdcal and et_xmlfile
puts "You are now running the RubyPython interpreter" 
puts "\n"

# PyRun_SimpleString lets you use a heredoc in this very Ruby file
RubyPython::Python.PyRun_SimpleString <<-PYTHON
def my_python_function():
    print("This Python code is in a heredoc in the Ruby file you are currently running")
PYTHON

# This calls on the "main" Python module
my_heredoc_reader = RubyPython.import("__main__")

# This will run the Python function in the heredoc above
my_heredoc_reader.my_python_function()
puts "\n"

# Now let's get a callback from a Python heredoc in a Ruby file; 
# This is a Ruby variable.  It can be set from within the Python interpreter or anywhere else in this Ruby file.
ruby_var_passed_to_python_heredoc = "value defined in Ruby code"

# Now let's get a callback from a Python heredoc in a Ruby file; 
# This is a Ruby variable.  It can be set from within the Python interpreter or anywhere else in this Ruby file.
ruby_var_passed_to_python_heredoc = "value defined in Ruby code"

# Python has several string interpolation methods but they don't all work properly with RubyPython
# Here is one that works properly using the <"...%()s" % locals()> syntax:
RubyPython::Python.PyRun_SimpleString <<-PYTHON
def another_python_function(variable):
    print("This Python code (also in a heredoc) is accepting a %(variable)s" % locals())
    return "The interpreter can return a %(variable)s" % locals()
PYTHON

# This will run the Python function in the heredoc above
my_heredoc_reader.another_python_function(ruby_var_passed_to_python_heredoc)
puts "\n"

# This is the RubyPython Ruby #end method that will end the Python interpreter.
RubyPython.stop
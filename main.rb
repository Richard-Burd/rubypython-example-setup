require 'pry'
require "rubypython"

puts "Welcome to the RubyPython Interpreter Page."
puts "\n"

# WARNING: According to this guy here: 
# https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from
# ...RubyPython has a habbit of crashing $ rails server (Ruby on Rails)

# This is the RubyPython Ruby #start method that will start the Python interpreter.
RubyPython.start 

# This will check to make sure the #start method is working properly.
# If this fails, you may need to install jdcal and et_xmlfile
puts "You are now running the RubyPython interpreter." 
puts "\n"

# PyRun_SimpleString lets you use a heredoc in this very Ruby file
RubyPython::Python.PyRun_SimpleString <<-PYTHON
def my_python_function():
    print("This Python code is in a heredoc in the Ruby file you are currently running.")
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
    print("This Python code (also in a heredoc) is accepting a %(variable)s." % locals())
    return "The interpreter can return a %(variable)s." % locals()
PYTHON

# This will run the Python function in the heredoc above
my_heredoc_reader.another_python_function(ruby_var_passed_to_python_heredoc)
puts "\n"

# This will call on the import Ruby method
sys = RubyPython.import("sys")

# This will grab a python script in the root directory.
sys.path.append('.')

# This will define the python script in the root directory to be grabbed.
RubyPython.import("py_script_1")
puts "\n"

# This will allow you to grab a Python script in the "lib" directory.
sys.path.append('./lib') #=> you can also use: "sys.path.append('lib')" instead.

# This will define the python script in the './lib' directory to be grabbed.
RubyPython.import("py_script_2")
puts "\n"

# This will grab the third Python script (located in the lib directory) and set it as a variable
my_python_interpreter = RubyPython.import("py_script_3")

# This will define the variables we will pass to the third Python script in this environment
ruby_input_to_python_function_1 = "Ruby string"
ruby_input_to_python_function_2 = "Python function"

# This will pass the variables we just defined (in Ruby) to the Python function in "py_script_3.py" and generate a callback
my_python_interpreter.a_python_function(ruby_input_to_python_function_1, ruby_input_to_python_function_2)

# This is the RubyPython Ruby #end method that will end the Python interpreter.
RubyPython.stop
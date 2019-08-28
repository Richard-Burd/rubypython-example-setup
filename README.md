# RubyPython Example Setup

## Background
This is a small wireframe sandbox that I created for using the <a href='https://rubygems.org/gems/rubypython/versions/0.6.3'>RubyPython Ruby gem v.0.6.3</a>.  Here is a <a href='https://i.imgur.com/W9nUnQe.jpg'> diagram of this workspace</a> that shows its functionality.

## Using This Repo
This is setup as a Ruby workspace and not a Python one.  Simply download and run ```$ ruby main.rb``` in bash and you will see the following series of printed strings if everything is working properly"
1. ```Welcome to the RubyPython Interpreter Page.```
2. ```You are now running the RubyPython interpreter.```
3. ```This Python code is in a heredoc in the Ruby file you are currently running.```
4. ```This Python code (also in a heredoc) is accepting a value defined in Ruby code.```
5. ```This Python file is being read by Ruby in the root directory.```
6. ```This Python file is being read by Ruby in the 'lib' directory.```
7. ```This is a Ruby string being passed to (and called back from) a Python function that is defined in a seperate Python file.```

## Prerequisites
I am running Ubuntu 18.04 and I had to install the ```jdcal``` and ```et_xmlfile``` Python libraries in order for the RubyPython gem to work.  Without them I got errors when calling ```RubyPython.start```
If you are new to Python like me, you can install the pip package manager then run the following commands in bash:
1. ```$ pip install jdcal```
2. ```$ pip install et_xmlfile```

There is a <a href='https://github.com/halostatue/rubypython/issues/28'> discussion here </a>with more detail on this topic.</p>

## Ruby on Rails
There is a <a href='https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from'> discussion here</a> on RubyPython crashing ```$ rails server```.  Check it out if you're planning on using Rails.




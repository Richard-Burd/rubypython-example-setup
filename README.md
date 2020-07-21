
# RubyPython Example Setup

## Background
This is a small wireframe sandbox that I created for using the <a href='https://rubygems.org/gems/rubypython/versions/0.6.3'>RubyPython Ruby gem v.0.6.3</a>.  
<a href="https://imgur.com/W9nUnQe"><img src="https://i.imgur.com/W9nUnQe.jpg" title="source: imgur.com" /></a>

## Prerequisites
I am running Ubuntu 18.04 and I had to install the `jdcal` and `et_xmlfile` Python libraries in order for the RubyPython gem to work.  Without them I got errors when calling `RubyPython.start`.  If you are new to Python, you can install the pip package manager then run the following commands in bash:
1. `$ pip install jdcal`
2. `$ pip install et_xmlfile`

## Using This Repo
This is setup as a Ruby workspace and not a Python one.&nbsp;  To use this program, enter the following commands into your console:
1. `$ gem install bundler` ... to install [Bundler](https://bundler.io/) if you don't already have it installed.
2. `$ bundle install` ... to install the [Ruby gems](https://rubygems.org/)
3. `$ ruby main.rb` ... to run the actual program.

When the program is executed, you will see the following series of printed strings if everything is working properly:
1. `Welcome to the RubyPython Interpreter Page.`
2. `You are now running the RubyPython interpreter.`
3. `This Python code is in a heredoc in the Ruby file you are currently running.`
4. `This Python code (also in a heredoc) is accepting a value defined in Ruby code.`
5. `This Python file is being read by Ruby in the root directory.`
6. `This Python file is being read by Ruby in the 'lib' directory.`
7. `This is a Ruby string being passed to (and called back from) a Python function that is defined in a separate Python file.`

There is a <a href='https://github.com/halostatue/rubypython/issues/28'> discussion here </a>with more detail on this topic.
I have the `pry`, `pry-byebug`, and `rubypython` Ruby gems in the `Gemfile` but you only need the `RubyPython` gem installed in order to get this environment working properly.

## Ruby Version & Stability
I am using Ruby version 2.5.1 in this workspace.&nbsp;  Users of Ruby 2.6 and greater have reported bugs because `RubyPython` is unstable and isn't currently being maintained; so while this is a good boilerplate workspace for a science experiment, use with caution on production projects.

## Ruby on Rails
There is a <a href='https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from'> discussion here</a> on RubyPython crashing `$ rails server`.  Check it out if you're planning on using Rails.

## Passing Values from Ruby to Python
All of the values in this workspace are strings.&nbsp;  I've had poor luck passing objects or arrays between Python & Ruby blocks.&nbsp;  I haven't had a chance to collaborate classes or convert Ruby arrays to Python libraries either.&nbsp;  If you would like to contribute code to this repo that can do any of those things, please feel free to do so and I will merge your additions.

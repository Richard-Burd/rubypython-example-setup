# RubyPython Example Setup

## Background
<p class='util--hide'>This is a small wireframe sandbox that I created for using the <a href='https://rubygems.org/gems/rubypython/versions/0.6.3'>RubyPython Ruby gem v.0.6.3</a>.  Here is a <a href='https://i.imgur.com/W9nUnQe.jpg'> diagram of this workspace</a> that shows its functionality.</p>

## Using This Repo
<p class='util--hide'>This is setup as a Ruby workspace and not a Python one.  Simply download and run bash$ ruby main.rb and you will see a series of printed strings if everything is working properly.</p>

## Prerequisites
I am running Ubuntu 18.04 and I had to install the ```jdcal``` and ```et_xmlfile``` Python libraries in order for the RubyPython gem to work.  Without them I got errors when calling ```RubyPython.start```
If you are new to Python like me, you can install the pip package manager then run the following commands in bash:
1. ```$ pip install jdcal```
2. ```$ pip install et_xmlfile```

There is a <a href='https://github.com/halostatue/rubypython/issues/28'> discussion here </a>with more detail on this topic.</p>

## Ruby on Rails
<p class='util--hide'>There is a <a href='https://stackoverflow.com/questions/18144087/using-the-rubypython-gem-in-ruby-on-rails-how-do-you-call-a-python-script-from'> discussion here</a> on ```RubyPython``` crashing Rails.  Check it out if you're planning on using Rails.</p>




def a_python_function(a, b):
  # Python has several string interpolation methods but they don't all work properly with RubyPython
  # Here is one that works properly using the <"...%()s" % locals()> syntax:
  print("7. This is a %(a)s being passed to (and called back from) a %(b)s that is defined in a separate Python file." % locals())

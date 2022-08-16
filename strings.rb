email = <<DOC 
Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Pellentesque et lacus dignissim erat bibendum ullamcorper. 
somexample@email.com
Donec tempor viverra est sed scelerisque. 
Praesent aliquet ornare orci. Mauris aliquam sollicitudin lacus, et mattis urna. 
DOC

puts email.gsub(/([a-z A-Z 0-9._-]+@[a-z A-Z 0-9._-]+\.[a-z A-Z 0-9_-]+)/, '**********@***.**')

#------TEAM-------
# Guillermo Villareal
# Luis Banderas
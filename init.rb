require 'paperclip/railtie'
Paperclip::Railtie.insert
require File.join(File.dirname(__FILE__), "lib", "paperclip")
require 'smarter_paperclip'

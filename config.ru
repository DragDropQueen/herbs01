require_relative 'herbs_app'
require 'sequel'
run HerbsApp

DB = Sequel.connect('postgres://gschool_user:password@localhost/herbs_development')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Create Users ..."
User.create(:first_name => "Test", :last_name => "T", :username => "admin", :email => "admin@admin.com",
            :password => "admin123")
puts User.username

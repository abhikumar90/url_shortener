# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
puts 'CREATED ADMIN USER: ' << user.username

user1 = User.create(username: "demo",email: 'demo@cybrilla.com',password: 'demo@&%!32',password_confirmation: 'demo@&%!32', name: 'demo',role: "user" )
puts 'CREATED NORMAL USER: ' << user1.email
puts 'CREATED ADMIN USER: ' << user1.username


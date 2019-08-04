# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' , name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
	[ "user1","glbrcpass" ],
	[ "user2","glbrcpss" ],
	[ "user3","glbrcpss" ],
]
user_list.each do |login,password|
  User.create( login: login, Password: password )
end

apps = Application.create([
{ name: 'Google', description: 'Search Engine', Color: 'Red', DefaultStatus: 'Yes', Link: 'http://www.google.com'},
{ name: 'Wisc', description: 'UW homepage', Color: 'Blue', DefaultStatus: 'No', Link: 'http://www.wisc.edu'},
{ name: 'GLBRC', description: 'Great Lakes Bioenergy Research Center', Color: 'Yellow', DefaultStatus: 'Yes', Link: 'http://www.glbrc.org'},
{ name: 'WEI', description: 'Wisconsin Energy Institute', Color: 'Green', DefaultStatus: 'No', Link: 'https://energy.wisc.edu/'},
{ name: 'Twitter', description: 'Twitter', Color: 'Purple', DefaultStatus: 'No', Link: 'https://twitter.com'}])

#country_list = [
#  [ "Germany", 81831000 ],
#  [ "France", 65447374 ],
#  [ "Belgium", 10839905 ],
#  [ "Netherlands", 16680000 ]
#]
#
#country_list.each do |name, population|
#  Country.create( name: name, population: population )
#end

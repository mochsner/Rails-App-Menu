# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' , name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
================================================================================
	Model: User
	View: NULL
	Controller: NULL

	Columns:
		login
		Password
=end
user_list = [
	[ "user1","glbrcpass" ],
	[ "user2","glbrcpss" ],
	[ "user3","glbrcpss" ],
	[ "amt","tuurtell" ],
	[ "ann-marie","tuurtell" ],
]
user_list.each do |login,password|
  User.create( login: login, Password: password )
end

=begin
================================================================================
	Model: App
	View: app.html.erb
	Controller: NULL

	Columns:
		name
		description
		Color
		DefaultStatus
		Link
=end
app_list = [
	['Google','Search Engine','Red','Yes','http://www.google.com'],
	['Wisc','UW homepage','Blue','No','http://www.wisc.edu'],
	['GLBRC','Great Lakes Bioenergy Research Center','Yellow','Yes','http://www.glbrc.org'],
	['WEI','Wisconsin Energy Institute','Green','No','https://energy.wisc.edu/'],
	['Twitter','Twitter','Purple','No','https://twitter.com']
]
app_list.each do |name,description,color,defaultstatus,link|
  App.create( name:name, description:description, Color:color, DefaultStatus:defaultstatus, Link:link )
end

=begin
================================================================================
	Model: UserApps
	View: userapp
	Controller: 

	Columns:
		UserApps_ID: #
		User_ID=User.User_ID 
		DECIDE (based on front-end/view limitations):
			App_ID_0 = App.ID (literal)
			App_ID_1 = App.ID (literal)
			App_ID_... = App.ID (literal)
			App_ID_N-1 = App.ID (literal)

			~OR~

			App_ID (literal) = 0
			App_ID (literal) = 1
			App_ID (literal) = ...
			App_ID (literal) = N-1
=end

# user_list.each do | login, password |
# 	apps.each do |u|
# 		UserApps.create( User_ID: )
# 	end
# end
# userapps_list = [
	
# ]
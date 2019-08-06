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
app_list.each do |name, description, color, defaultstatus, link|
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
			App_ID (literal) = 1 
			App_ID (literal) = 2 
			App_ID (literal) = ... 
			App_ID (literal) = N 
=end

user_id = 0

user_list.each do | login, password |
	user_app = {}
	app_id = 0
	app_sequence = 0
	app_list.each do | name, description, color, defaultstatus, link |
		app_id += 1
		if defaultstatus == 'Yes'
			app_sequence += 1
			user_app['app_'+app_id.to_s] = app_sequence
		else
			user_app['app_'+app_id.to_s] = 0
		end
	end

	user_id += 1
	user_app['user_id'] = user_id
	puts user_app
	UserApp.create( user_app )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.create(first_name: 'admin', password: 'adminpassword', email: 'admin@gmail.com', admin: true)

	first_names = ['Nestor','Angelica', 'Ceejay', 'Jace', 'Jym', 'Gabriel']
	last_names = ['Pestelos', 'Carlos', 'Billones', 'Monje', 'Carandang', 'Sandoval']
	password = 'password'

	x = 0
	while x < 5 do
		admin = (x==0) ? true : false
		user = User.create(email: first_names[x].downcase + '@aelogica.com', password: password, first_name: first_names[x], last_name: last_names[x], admin: admin)
		x = x + 1
	end

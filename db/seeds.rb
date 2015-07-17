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
schools = ['', 'UP Diliman', 'UP Diliman', 'UST', 'Ateneo']

x = 0
while x < 6 do
	admin = (x==0) ? true : false
	user = User.create(email: first_names[x].downcase + '@aelogica.com', password: password, first_name: first_names[x], last_name: last_names[x], admin: admin)
	x = x + 1
end

q_group = Rapidfire::QuestionGroup.create(name: 'Internship Survey')

questions = ['What were your expectations before you started the internship? ',
						'Did we meet your expectations? What was similar and what was different from your expectations? ',
						'What did you learn during the 6 weeks that you wouldn\'t have learned on your own? ',
						'What did you learn during the 6 weeks that you would have learned on your own? ', 
						'Knowing what you know now, what would you change about the program to make it better? ',
						'What was your favourite part of the program? ',
						'What was your least favourite part of the program? ']

x = 0

while x < 7 do
	q = Rapidfire::Questions::Long.create(question_group_id: 1, type: 'Rapidfire::Questions::Long', question_text: questions[x])
	x = x + 1
end

	q = Rapidfire::Questions::Radio.create(question_group_id: 1, type: 'Rapidfire::Questions::Radio', question_text: 'Would you recommend this internship to a friend?', answer_options: "Yes\r\nNo")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = ['english', 'french', 'german']
amount = ['200' ,'300', '400']
gender =['male','female']
    user1=User.create(email: 'test-user1@event.com', password: 'password')
    user1.build_baby_sitter_registrations( 
    country: Faker::Address.country,
    city: 'Melbourne',
    gende: 'gender'.sample(1),
    description: Faker::GreekPhilosophers.quote,
    language: languages.sample(2),
    amount: amount.sample(6)
    )
    user1.save
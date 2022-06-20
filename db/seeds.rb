# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skips = Question.pluck(:id).count
(100 - skips).times do |time|
  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 100),
    a1: Faker::Lorem.paragraph_by_chars(number: 10),
    a2: Faker::Lorem.paragraph_by_chars(number: 10),
    a3: Faker::Lorem.paragraph_by_chars(number: 10),
    a4: Faker::Lorem.paragraph_by_chars(number: 10),
    ans: 3,
    level: "ez",
    role: "xa hoi"
  )  
 
  question.save
  question1 = Question.new(
    quetion: Faker::Lorem.question(word_count: 100),
    a1: Faker::Lorem.paragraph_by_chars(number: 10),
    a2: Faker::Lorem.paragraph_by_chars(number: 10),
    a3: Faker::Lorem.paragraph_by_chars(number: 10),
    a4: Faker::Lorem.paragraph_by_chars(number: 10),
    ans: 3,
    level: "normal",
    role: "xa hoi"
  
  ) 
  
  question1.save
  question2 = Question.new(
    quetion: Faker::Lorem.question(word_count: 100),
    a1: Faker::Lorem.paragraph_by_chars(number: 10),
    a2: Faker::Lorem.paragraph_by_chars(number: 10),
    a3: Faker::Lorem.paragraph_by_chars(number: 10),
    a4: Faker::Lorem.paragraph_by_chars(number: 10),
    ans: 3,
    level: "hard",
    role: "xa hoi"
  
  )  

  question2.save
end

user = User.new(
  email: "admin@gmail.com",
  password: "123456",  
  username: "admin",
  role: "admin"
)
user.save
user1 = User.new(
  email: "nguyen@gmail.com",
  username: "nguyenhao",
  password: "123456"
)
user1.save

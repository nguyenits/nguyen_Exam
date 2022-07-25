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
    quetion: Faker::Lorem.question(word_count: 50),
    Belongto: "admin",
    level: "ez",
    role: "xa hoi",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save

  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "ez",
    Belongto: "admin",
    role: "tu nhien",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save

  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "ez",
    Belongto: "admin",
    role: "esport",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
    
  )  
 
  question.save
  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "normal",
    Belongto: "admin",
    role: "tu nhien",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save

  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "normal",
    Belongto: "admin",
    role: "esport",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save
  question1 = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "normal",
    Belongto: "admin",
    role: "xa hoi",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  
  ) 
  
  question1.save

  question2 = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "hard",
    Belongto: "admin",
    role: "xa hoi",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  
  )  
  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "hard",
    Belongto: "admin",
    role: "tu nhien",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save

  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "hard",
    Belongto: "admin",
    role: "esport",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save
  question2.save
  question3 = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "very hard",
    Belongto: "admin",
    role: "xa hoi",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  
  )  
  question3.save
  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "very hard",
    Belongto: "admin",
    role: "tu nhien",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save

  question = Question.new(
    quetion: Faker::Lorem.question(word_count: 50),
    level: "very hard",
    Belongto: "admin",
    role: "esport",
    answer_attributes: [
      {moreans: "A1", check: true},
      {moreans: "A2", check: false},
      {moreans: "A3", check: false},
      {moreans: "A4", check: false},
      {moreans: "A5", check: false}
   ]
  )  
 
  question.save
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

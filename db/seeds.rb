# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cats = [
    {
      name: 'Wily-Kit',
      age: 3,
      enjoys: 'Getting into trouble.',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYIGk9Sb3dYyKY_jhLdAUIKcuS3TuwOlc9pg&usqp=CAU'
    },
    {
      name:'Wily-Kat',
      age: 3,
      enjoys: 'Getting into trouble.',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTo41UO7wHX6rqGBGmRo1za55KqdIz-xcH-g&usqp=CAU'
    },
    {
      name: 'Bolo',
      age: 4,
      enjoys: 'Starting trouble.',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2EXgnNI7sL8mBr2l3dPw_5-sMnZw23511DA&usqp=CAU'
    }, 
  ]
  
  cats.each do |each_cat|
    Cat.create each_cat
    puts "creating cat #{each_cat}"
  end
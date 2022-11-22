# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 Skill.create!([
  {name: "Coding", description: "Knowledge in python,javaskript and sql", price: 25, level: 2},
  {name: "Cook a Basic Meal", description: "German and English languages", price: 10, level: 3},
  {name: "Moonwalk", description: "Wouldn’t it be cool to be able to glide along the floor as if super-humanly?", price: 30, level: 5}
  {name: "Solve a Rubik Cube", escription: "Rubik cubes seem like the ultimate unsolvable puzzle. But these little cubes are not impossible, as long as you understand the way they work.", price: 5, level: 2}
  {name: "Change a Tire", description: "Knowing how to change a flat tire can be the turning point in making a major issue into merely an inconvenience", price: 7, level: 2}
  {name: "Learn Photography", description: "Being able to take amazing photographs may just make you a favorite among your friends", price: 20, level: 4}
  {name: "How to Meditate", description: "With focus shifting to one well-being, meditation has become more and more common", price: 15, level: 1}
  {name: "How to Pack a Suitcase", description: "On certain flights, having checked luggage can cost a great deal", price: "5euro", level: "50years experience"}
  {name: "How to Ride a Bike", description: "With the world’s environment being what it is, learning to ride a bike will not only be a cool skill for you to know but will also be beneficial to the environment", price: 20, level: 4}
  {name: "How to do Basic Home Repairs", description: "Knowing how to repair things around the house will save you both time and money", price: 5, level: 2}
  {name: "How to Organize Your House", description: "Not only will organizing improve the aesthetics of your life, but it will also make your life easier.", price: 10, level: 4}
  {name: "Learn Basic CPR ", description: "Learning CPR is the literal definition of learning a life-saving skill", price: 10, level: 5}
  {name: "How to Light a Fire", description: "Being able to light a fire will always be a good skill to know", price: 10, level: 2}
  {name: "How to Manage Personal Finance", description: "Managing personal finances is something hardly anyone is taught, either at school or by parents.", price: 15, level: 3}
 ])

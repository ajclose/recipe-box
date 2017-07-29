# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

scrambled_eggs = Recipe.create!({title: "Scrambled Eggs", description: "Declicious Eggs", cook_time: 30})
Step.create!(recipe_id: scrambled_eggs.id, order: 1, directions: "Melt butter in pan over medium heat")
Step.create!(recipe_id: scrambled_eggs.id, order: 2, directions: "Crack eggs in a bowl and whisk together")
Step.create!(recipe_id: scrambled_eggs.id, order: 3, directions: "Pour eggs in pan and mix with butter")
Step.create!(recipe_id: scrambled_eggs.id, order: 4, directions: "Occasionally go around the pan pushing the eggs to center until eggs are cooked through")
Step.create!(recipe_id: scrambled_eggs.id, order: 5, directions: "Once cooked through, season with salt and pepper and serve")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create name: 'Ironhack', description: 'This is a silly test'
Project.create name: 'Ironhack 75', description: 'This is a silly jdgkjsjd'
Project.create name: 'Ironhack 85', description: 'lañkfl aklsjfkla skljaklsf'
Project.create name: 'Ironhack 54', description: 'This is a silly pear'
Project.create name: 'Ironhack 99', description: 'This is a silly watermelon'
Project.create name: 'Ironhack 34', description: 'This is a silly cloud'
25.times do |x|
  Project.create name: "Ironhack #{x}", description: "This is a silly #{x} cloud"
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

U1 = User.find(1)

L1 = List.new(user_id: U1.id, name: "Household")
L1.save

task1 = Task.new(description: "Feed the cat", completion_status: false,
                 list_id: L1.id)
task1.save

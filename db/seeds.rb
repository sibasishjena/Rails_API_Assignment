# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    #puts "start"
    Employee.create(
        {name: Faker::Name.name.to_s,
        age: Faker::Number.number(digits: 2).to_i,
        designation: Faker::Job.title.to_s,
        company: Faker::Company.name.to_s}
    )
    #puts model
    #puts model.name
    #puts model.age
    #puts model.designation
    #puts model.company
    #puts model.save
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


last_name = "Nicholas"
password = 'aswedding'

family = Family.create(family_name: last_name)

User.create(first_name: "Ann", last_name: last_name, family: family, name: "Ann Nicholas", password: password)
User.create(first_name: "Steve", last_name: last_name, family: family, name: "Steve Nicholas", password: password)
User.create(first_name: "Andrew", last_name: last_name, family: family, name: "Andrew Nicholas", password: password)
User.create(first_name: "Matt", last_name: last_name, family: family, name: "Matt Nicholas", password: password)
User.create(first_name: "Jeff", last_name: last_name, family: family, name: "Jeff Nicholas", password: password)
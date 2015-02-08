# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create({name: "Zwykły"})
r2 = Role.create({name: "Admin"})

u1 = User.create({name: "Anna", email: "anna@mailer.com", password: "password", password_confirmation: "password", role_id: r1.id})
u2 = User.create({name: "Jan", email: "jan@mailer.com", password: "password", password_confirmation: "password", role_id: r2.id})



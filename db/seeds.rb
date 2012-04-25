# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new({ name: "admin", password: "admin", password_confirmation: "admin", email: "admin" })
admin.role = :admin
admin.save

User.create(name: "user", password: "user", password_confirmation: "user", email: "user")

achivement = Achievement.new( acceptance: 3, name: "test achivement 1", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save


achivement = Achievement.new( acceptance: 3, name: "test achivement 2", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save


achivement = Achievement.new( acceptance: 3, name: "test achivement 3", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save


achivement = Achievement.new( acceptance: 3, name: "test achivement 4", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save


achivement = Achievement.new( acceptance: 3, name: "test achivement 5", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save


achivement = Achievement.new( acceptance: 3, name: "test achivement 6", description: "test achievement description" )
achivement.creator = achivement.supervisor = admin
achivement.tags.build(name: "test tag")
achivement.save

f = Fulfillment.new()
f.achievement = achivement
f.user = admin
f.save()

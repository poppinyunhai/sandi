# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => "admin@163.com", :password => "ningxiaopeng3d")
Type.create(:name => "1")
Type.create(:name => "2")
Type.create(:name => "3")
Type.create(:name => "4")
Art.create()
Brand.create()
Meet.create()
Meng.create()
Service.create()
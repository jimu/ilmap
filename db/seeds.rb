# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Union.create [
  {name: "Hashtags", members: 89, prosperity: 241274,  region: 3, cities: 20, color:"purple"},
]

fenix    = Union.where("name = 'Fenix'").first.id
tf       = Union.where("name = 'TestFederation'").first.id
hashtags = Union.where("name = 'Hashtags'").first.id

Player.create [
  #{name: "Brak", x: 3315, y: 1015, prosperity: 2843, activeness: 133, kills: 207, status: "Member", union_id: fenix, blueprints: "none"},
  #{name: "Ash",  x: 654, y: 4393, prosperity: 3245, activeness: 2796, kills: 567, status: "Member", union_id: tf, blueprints: "CV-M011, DD:Eris"},     # Region 1
  #{name: "Stinky",  x: 6413, y: 7726, prosperity: 2809, activeness: 853, kills: 196, status: "Member", union_id: 2, blueprints: "Constantine"},
   {name: "Blackbeard",  x: 8423, y: 2845, prosperity: 2802, activeness: 289, kills: 121, status: "Member", union_id: hashtags, blueprints: "none", attention: "2021-09-16T19:08:00-0500"},
  #{name: "TODO",  x: TODO, y: TODO, prosperity: TODO, activeness: TODO, kills: TODO, status: "TODO", union_id: TODO, blueprints: "TODO"},
]

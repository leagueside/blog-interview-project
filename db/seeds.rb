# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jt = User.create name: 'JT'
shannon = User.create name: 'Shannon'
stephen = User.create name: 'Stephen'

pokemon = Blog.create title: 'West Philly Pokemon', user: shannon
cats = Blog.create title: 'Cutest Cats', user: jt

bulbasaur = Post.create title: 'Bulbasaur Found!', content: '40th & Market', blog: pokemon
Post.create title: 'Charizard Found!', content: '42nd & Chestnut', blog: pokemon
monday_cat = Post.create title: 'Monday Cute Cate', content: 'https://placekitten.com/300/400', blog: cats

Favorite.create post: bulbasaur, user: jt
Favorite.create post: monday_cat, user: stephen
Favorite.create post: monday_cat, user: shannon

Log.create entry: 'Database seeded!'
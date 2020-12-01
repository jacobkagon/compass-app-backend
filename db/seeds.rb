# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Like.destroy_all
Comment.destroy_all

carole = User.create(name: "Carole Baskin")
tom = User.create(name: "Tom Jerry")
cher = User.create(name: "Cher Lock")

photo1 = Post.create(image: "https://news.miami.edu/_assets/images-stories/2018/10/hero_natgeo_940x529.jpg", caption: "Lonely Lighthouse", user_id: carole.id)
photo2 = Post.create(image: "https://s3.amazonaws.com/media.mediapost.com/dam/cropped/2019/07/11/natgeo-sharkfest-600_MmNc4xe.jpg", caption: "Beware of Shark", user_id: cher.id)
photo3 = Post.create(image: "https://wallpaperset.com/w/full/c/e/f/184459.jpg", caption: "Mother and cub", user_id: tom.id)
photo4 = Post.create(image: "https://i.insider.com/5dd326a23afd374fb25472be?width=1136&format=jpeg", caption: "Desolate Desert", user_id: carole.id)

first_like = Like.create(number: 0, user_id: carole.id, post_id: photo1.id)




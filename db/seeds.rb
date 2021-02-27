# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'email@email.com', username: 'tester', password: 'password')
Article.create(subreddit: 'testsub', title: 'testtitle', url: 'testurl.com', viewcount: '8', thumbnail: 'testthumb')
Article.create(subreddit: 'testsub2', title: 'testtitle2', url: 'testurl.com2', viewcount: '82', thumbnail: 'testthumb2')
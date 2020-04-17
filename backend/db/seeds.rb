# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "hi", email:"hi", password: "123")
User.create(username: "bye", email:"bye", password: "456")

Show.create(title: "something")
Show.create(title: "another thing")

Playlist.create(name: "action", user: User.first)
Playlist.create(name: "romance", user: User.first)
Playlist.create(name: "horror", user: User.second)

Comment.create(content: "this show sucks", user: User.first, show: Show.first)
Comment.create(content: "this show sucks even more", user: User.first, show: Show.second)
Comment.create(content: "this show is great", user: User.second, show: Show.first)
Comment.create(content: "this show is even more great", user: User.second, show: Show.second)

Listitem.create(playlist: Playlist.first, show: Show.first)
Listitem.create(playlist: Playlist.first, show: Show.second)
Listitem.create(playlist: Playlist.second, show: Show.second)
Listitem.create(playlist: Playlist.third, show: Show.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user =  User.create(name: 'lola', photo: 'https://i.imgur.com/1JZ1Q2r.jpg', bio: 'I am a biology teacher', posts_counter: 1)

@user2 =User.create(name: 'lucas', photo: 'https://i.imgur.com/1JZ1Q2r.jpg', bio: 'I am a math teacher',
posts_counter: 0)

@first_post = Post.create(author:  @user, title: 'My post', text: 'This is my first post')

Comment.create(post: @first_post, author: @user2, text: 'This the first post comment')
#    Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!' )
Like.create(author_id:    @user2.id, post_id: @first_post.id)

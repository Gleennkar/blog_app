# require 'rails_helper'

# RSpec.describe 'Posts', type: :request do
#   let(:user) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico', posts_counter: 3) }
#   let(:post) do
#     Post.create(author_id: user.id, title: 'Post 3', text: 'This is my third post', likes_counter: 1,
#                 comments_counter: 1)
#   end

#   it 'should get index' do
#     get "/users/#{user.id}/posts"
#     expect(response).to have_http_status(200)
#   end

#   it 'should get show' do
#     get "/users/#{post.author_id}/posts/#{post.id}"
#     expect(response).to have_http_status(200)
#   end

#   it 'returns correct show template' do
#     get "/users/#{post.author_id}/posts/#{post.id}"
#     expect(response).to render_template(:show)
#   end

#   it 'returns correct index template' do
#     get "/users/#{user.id}/posts"
#     expect(response).to render_template(:index)
#   end

#   it 'gets correct response body' do
#     get "/users/#{user.id}/posts/#{post.id}"
#     expect(response.body).to include('This is a post')
#   end

#   it 'gets correct response body' do
#     get "/users/#{user.id}/posts"
#     expect(response.body).to include('Here is a list of posts for a given user')
#   end
# end

# require 'rails_helper'

# RSpec.describe 'Users', type: :request do
#   let(:user) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico', posts_counter: 3) }

#   it 'should get index' do
#     get '/users'
#     expect(response).to have_http_status(200)
#   end

#   it 'should get show' do
#     get "/users/#{user.id}"
#     expect(response).to have_http_status(200)
#   end

#   it 'return correct show template' do
#     get "/users/#{user.id}"
#     expect(response).to render_template(:show)
#   end

#   it 'return correct index template' do
#     get '/users'
#     expect(response).to render_template(:index)
#   end

#   it 'gets correct response body' do
#     get "/users/#{user.id}"
#     expect(response.body).to include('This is a user')
#   end

#   it 'gets correct response body' do
#     get '/users'
#     expect(response.body).to include('Here is a list of all the users')
#   end
# end

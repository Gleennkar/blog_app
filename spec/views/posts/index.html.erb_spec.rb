require 'rails_helper'

RSpec.describe 'Post', type: :system, js: true do
  describe 'index page' do
    before(:each) do
      @user = User.create(name: 'Abdul', bio: 'Aspiring FullStack Dev', photo: 'https://unsplash.com/photos/NDCy2-9JhUs',
                          posts_counter: 0)
      @user2 = User.create(name: 'Joy', bio: 'FullStack Dev', photo: 'https://unsplash.com/photos/hodKTZow_Kk',
                           posts_counter: 0)
      @post1 = Post.create(title: 'Test', text: 'First Post', comments_counter: 0, likes_counter: 0, author: @user)
      @post2 = Post.create(title: 'Working?', text: 'Second Post', comments_counter: 0, likes_counter: 0, author: @user)
      @comment1 = Comment.create(text: 'First Comment', post: @post1, author: @user2)
      @comment2 = Comment.create(text: 'Second Comment', post: @post2, author: @user2)

      visit user_posts_path(@user)
    end

    it 'displays the users profile picture' do
      find("img[src='#{@user.photo}']")
    end

    it 'displays the users username' do
      expect(page).to have_content(@user.name)
    end

    it 'displays the post text' do
      expect(page).to have_content(@post1.text)
    end

    it 'displays the first comment' do
      expect(page).to have_content(@comment1.text)
    end

    it 'displays the number of comments' do
      expect(page).to have_content('2')
    end

    it 'displays the number of likes' do
      expect(page).to have_content('1')
    end

    it 'redirects to the post show page when clicked' do
      click_link 'First Post'
      expect(page).to have_current_path(user_post_path(@user, @post1))
    end
  end
end

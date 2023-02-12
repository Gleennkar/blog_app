require 'rails_helper'
RSpec.describe 'Post show page', type: :feature do
  before(:each) do
    @user = User.create(
      name: 'Abdul',
      bio: 'Aspiring FullStack Dev',
      photo: 'https://unsplash.com/photos/NDCy2-9JhUs',
      posts_counter: 2
    )

    @user2 = User.create(
      name: 'Joy',
      bio: 'FullStack Dev',
      photo: 'https://unsplash.com/photos/hodKTZow_Kk',
      posts_counter: 2
    )

    @post1 = Post.create(
      title: 'Test',
      text: 'First Post',
      comments_counter: 0,
      likes_counter: 0,
      author: @user
    )

    @comment1 = Comment.create(
      text: 'First Comment',
      post: @post1,
      author: @user2
    )

    visit user_post_path(@user, @post1)
  end

  it 'displays the post author' do
    expect(page).to have_content(@user.name)
    expect(page).to have_content(@user2.name)
  end

  it 'displays number of comments' do
    expect(page).to have_content(@post1.comments_counter)
  end

  it 'displays number of likes' do
    expect(page).to have_content(@post1.likes_counter)
  end

  it 'displays the post text' do
    expect(page).to have_content(@post1.text)
  end

  it 'displays the commentor' do
    expect(page).to have_content(@post1.comments_counter)
  end

  it 'displays the comment text' do
    expect(page).to have_content(@comment1.text)
  end
end

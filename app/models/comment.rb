class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  after_save :update_comments_counter

  def update_comments_counter
    Post.increment_counter(:comments_counter, post_id)
  end
end

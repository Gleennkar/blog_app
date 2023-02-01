class AddRefComment < ActiveRecord::Migration[7.0]
  def change
    Comment.references :post, foreign_key: { to_table: 'posts' }
  end
end

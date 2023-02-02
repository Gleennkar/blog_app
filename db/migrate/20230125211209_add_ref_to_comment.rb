class AddRefToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :post, :bigint
  end
end

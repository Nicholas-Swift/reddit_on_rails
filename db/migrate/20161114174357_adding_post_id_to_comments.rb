class AddingPostIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :post_id, :integer, index: true
  end
end

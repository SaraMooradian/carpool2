class AddUserIdToCarpools < ActiveRecord::Migration
  def change
    add_column :carpools, :user_id, :integer
    add_index :carpools, :user_id
  end
end

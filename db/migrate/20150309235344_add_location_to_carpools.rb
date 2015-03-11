class AddLocationToCarpools < ActiveRecord::Migration
  def change
    add_column :carpools, :location, :string
    add_index :carpools, :location
  end
end

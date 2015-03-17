class ChangeDatetoTextInCarpools < ActiveRecord::Migration
  def change
  	change_column :carpools, :startdate, :string
  	
  end
end

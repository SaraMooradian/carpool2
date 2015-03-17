class ChangeEnddateToText < ActiveRecord::Migration
  def change
  	change_column :carpools, :enddate, :string
  	
  end
end

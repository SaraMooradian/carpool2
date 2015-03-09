class ChangeStringToDatetime < ActiveRecord::Migration
  def change
  	change_column :carpools, :starttime, :datetime 
  	change_column :carpools, :endtime, :datetime 
  end
end

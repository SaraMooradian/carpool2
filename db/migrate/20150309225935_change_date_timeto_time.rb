class ChangeDateTimetoTime < ActiveRecord::Migration
  def change
change_column :carpools, :starttime, :time 
  	change_column :carpools, :endtime, :time 
  end
end
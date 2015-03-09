class AddDatesToCarpools < ActiveRecord::Migration
  def change
    add_column :carpools, :startdate, :date
    add_column :carpools, :enddate, :date
  end
end

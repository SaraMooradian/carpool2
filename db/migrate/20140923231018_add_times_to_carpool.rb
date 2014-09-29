class AddTimesToCarpool < ActiveRecord::Migration
  def change
    add_column :carpools, :starttime, :string
    add_column :carpools, :endtime, :string
  end
end

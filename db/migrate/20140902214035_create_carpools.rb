class CreateCarpools < ActiveRecord::Migration
  def change
    create_table :carpools do |t|
      t.string :description

      t.timestamps
    end
  end
end

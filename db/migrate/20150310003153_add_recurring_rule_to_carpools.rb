class AddRecurringRuleToCarpools < ActiveRecord::Migration
  def change
    add_column :carpools, :recurring_rule_column, :string
  end
end

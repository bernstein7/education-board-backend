class AddDefaultStatusValueToTasks < ActiveRecord::Migration[5.0]
  def change
  	change_column :tasks, :status, :integer, null: false, default: 0
  end
end

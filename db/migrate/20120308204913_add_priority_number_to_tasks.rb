class AddPriorityNumberToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :priority_number, :integer

  end
end

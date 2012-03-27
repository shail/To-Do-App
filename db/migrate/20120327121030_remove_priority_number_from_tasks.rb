class RemovePriorityNumberFromTasks < ActiveRecord::Migration
  def up
  	remove_column :tasks, :priority_number
  end

  def down
  	add_column :tasks, :priority_number
  end
end

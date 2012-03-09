class AddPriorityLevelToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :priority_level, :string
  end
end

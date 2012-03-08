class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :description
      t.boolean :completion_status

      t.timestamps
    end
  end
end

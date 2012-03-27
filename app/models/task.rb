class Task < ActiveRecord::Base
  attr_accessor :all_tasks
  belongs_to :list
  validates :list_id, :description, :presence => true
  validates :priority_level, :presence => true
  validates :due_date, :presence => true


  def report_status
    if completion_status == true
      "Done"
    else
      "Incomplete"
    end
  end
  
end

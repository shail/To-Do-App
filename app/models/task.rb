class Task < ActiveRecord::Base
  belongs_to :list
  validates :list_id, :description, :presence => true
  
  def report_status
    if completion_status == true
      "Done"
    else
      "Incomplete"
    end
  end
  
end

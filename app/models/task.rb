class Task < ActiveRecord::Base
  belongs_to :list
  validates :list_id, :description, :presence => true
  validates :priority_number, :numericality => { :only_integer => true }
  
  def report_status
    if completion_status == true
      "Done"
    else
      "Incomplete"
    end
  end
  
end

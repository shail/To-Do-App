class List < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  validates_presence_of :user_id
  
  PRIORITIES = {
      "High" => 0,
      "Medium"  => 1,
      "Low"  => 2,
      "None" => 3
    }
  
  def priority_level_sort
    self.tasks.sort_by {|task| PRIORITIES[task.priority_level]}
  end
end

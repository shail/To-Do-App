class List < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  validates_presence_of :user_id
  
  def priority_sort
    self.tasks.sort_by {|task| task.priority_number} 
  end
end

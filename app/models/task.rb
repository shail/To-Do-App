class Task < ActiveRecord::Base
  attr_accessor :all_tasks
  belongs_to :list
  validates :list_id, :description, :presence => true
  validates :priority_number, :numericality => { :only_integer => true }
  validates :priority_level, :presence => true
  validates :due_date, :presence => true
  # before_save :check_priority_number_uniqueness, :priority_number_increment
 
  def report_status
    if completion_status == true
      "Done"
    else
      "Incomplete"
    end
  end
  

  
  # def priority_number_increment
  #   @all_tasks.each do |task| 
  #     if task.priority_number >= (@equal_priority_number ||= (@all_tasks.length + 1))
  #       task.priority_number += 1
  #       task.save
  #     end
  #   end  
  # end
  # 
  # def check_priority_number_uniqueness
  #   @all_tasks = Task.find_all_by_list_id(self.list_id)
  #   @all_tasks.each do |task|
  #     if self.priority_number == task.priority_number
  #       @equal_priority_number = task.priority_number
  #     end
  #   end
  # end
  
end

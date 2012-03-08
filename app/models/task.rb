class Task < ActiveRecord::Base
  belongs_to :list
  validates :list_id, :description, :presence => true
  
end

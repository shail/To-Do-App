class List < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  validates_presence_of :user_id
end

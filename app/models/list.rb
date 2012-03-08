class List < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  validates_presence_of :user_id
end

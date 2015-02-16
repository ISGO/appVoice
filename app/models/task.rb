class Task < ActiveRecord::Base
  validates :task_title, :presence => true
  validates :instructions, :presence => true

  has_many :links, :dependent => :destroy
  attr_accessible :description, :image, :instructions, :task_title
end

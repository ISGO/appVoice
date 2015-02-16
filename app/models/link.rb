class Link < ActiveRecord::Base
	validates :link_title, :presence => true
	validates :link_type, :presence => true
	validates :url, :presence => true

	belongs_to :task

  attr_accessible :link_title, :link_type, :url
end

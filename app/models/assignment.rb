class Assignment < ActiveRecord::Base
  attr_accessible :instructions, :name
  has_many :submissions
end

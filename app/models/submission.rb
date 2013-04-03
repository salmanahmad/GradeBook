class Submission < ActiveRecord::Base
  attr_accessible :body, :assignment_id, :user_id
  belongs_to :assignment
  belongs_to :user
end

class User < ActiveRecord::Base
  attr_accessible :email, :password, :type
end

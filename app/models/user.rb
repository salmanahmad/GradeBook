class User < ActiveRecord::Base
  self.inheritance_column = "inheritance"
  attr_accessible :email, :password, :type, :password_confirm
  attr_accessor :password_confirm
end

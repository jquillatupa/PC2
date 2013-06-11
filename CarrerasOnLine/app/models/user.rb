class User < ActiveRecord::Base
  attr_accessible :last_name, :mail, :name, :password, :surname, :user_name
end

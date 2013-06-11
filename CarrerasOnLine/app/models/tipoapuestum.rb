class Tipoapuestum < ActiveRecord::Base
  attr_accessible :nombre

  has_many :apuestums
end

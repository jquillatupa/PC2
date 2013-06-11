class Carrera < ActiveRecord::Base
  attr_accessible :descripcion

  has_many :caballoxcarerras
  has_many :apuestums
  has_one :tweet
end

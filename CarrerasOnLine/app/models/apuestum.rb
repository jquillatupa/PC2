class Apuestum < ActiveRecord::Base
  attr_accessible :idapuesta, :idcarrera, :idtipoapuesta, :montoapuesta, :montopagado

  has_many :detalleapuestums
  belongs_to :carrera
  belongs_to :tipoapuestum
end

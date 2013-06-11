class Detalleapuestum < ActiveRecord::Base
  attr_accessible :idapuesta, :idcaballo

  belongs_to :apuestum
end

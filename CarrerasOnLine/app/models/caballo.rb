class Caballo < ActiveRecord::Base
  attr_accessible :nombre, :ratio

  has_many :caballoxcarerras
  belongs_to :detalleapuestum
end

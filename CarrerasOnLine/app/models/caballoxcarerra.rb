class Caballoxcarerra < ActiveRecord::Base
  attr_accessible :idcaballo, :idcarrera, :puesto

  belongs_to :caballo
  belongs_to :carrera
end

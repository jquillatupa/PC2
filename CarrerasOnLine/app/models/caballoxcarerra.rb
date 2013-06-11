class Caballoxcarerra < ActiveRecord::Base
  attr_accessible :idcaballo, :idcarrera, :puesto

 belongs_to :carrera
  belongs_to :caballo
end

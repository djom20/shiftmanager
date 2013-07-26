class Hotel < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :direccion, :estado, :name, :telefono
end

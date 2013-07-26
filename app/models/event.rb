class Event < ActiveRecord::Base
	belongs_to :user
	attr_accessible :descripcion, :estado, :fecha, :prioridad, :titulo, :username
end

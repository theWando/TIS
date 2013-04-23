class Partida < ActiveRecord::Base
  belongs_to :budget
  attr_accessible :amount_assigned, :amount_aviable, :name
end

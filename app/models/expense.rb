class Expense < ActiveRecord::Base
  belongs_to :partida
  attr_accessible :amount, :description, :name
end

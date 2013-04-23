class Budget < ActiveRecord::Base
  belongs_to :department
  attr_accessible :amount, :starts_on
end

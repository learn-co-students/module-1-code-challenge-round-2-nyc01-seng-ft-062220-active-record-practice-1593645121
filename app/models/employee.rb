class Employee < ActiveRecord::Base
    has_many :managers
    belongs_to :department
end

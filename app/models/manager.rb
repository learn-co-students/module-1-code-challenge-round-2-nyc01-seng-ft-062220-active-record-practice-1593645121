class Manager < ActiveRecord::Base    
    has_many :manager_employees
    has_many :employees, through: :manager_employees

    #all required methods for manager is built-in thanks to ActiveRecord
end
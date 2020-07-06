class Manager < ActiveRecord::Base
    has_many :manager_employees
    has_many :employees, through: :manager_employees    
end
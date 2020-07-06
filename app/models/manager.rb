class Manager < ActiveRecord::Base    
    #how is it related to manager employees? 
    has_many :manager_employees
    has_many :employees, through: :manager_employees
    
    
end
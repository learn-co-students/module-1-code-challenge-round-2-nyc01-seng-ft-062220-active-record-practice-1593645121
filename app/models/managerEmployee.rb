#commit one requires a new model for a join table (many_to_many)
#employee to manager (thus remove the manager_id column from table)
#make sure manager_employees table 
class ManagerEmployee < ActiveRecord::Base
    belongs_to :manager
    belongs_to :employee
end
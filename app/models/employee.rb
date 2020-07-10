class Employee < ActiveRecord::Base
    has_many :managerEmployees
    has_many :managers, through: :managerEmployees
    belongs_to :department
    has_many :calls
    has_many :specialists, through: :calls

    
    #Most is built in with ActiveRecord:
    #   self.name
    #   self.specialists (thanks to join table calls)
    #   self.managers    (thanks to join table managerEmployees)
    #  self.department

    def num_of_calls #user count method
        self.calls.count 
    end

    def self.most_calls
        self.all.max_by {|ele| ele.num_of_calls }
    end


end

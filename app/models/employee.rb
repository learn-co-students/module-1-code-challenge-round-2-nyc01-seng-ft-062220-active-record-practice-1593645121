class Employee < ActiveRecord::Base
    has_many :managerEmployees
    has_many :managers, through: :managerEmployees
    belongs_to :department
    has_many :calls
    has_many :specialists, through: :calls

    
    #Employee#specialists is built in with ActiveRecord
    #def specialists
    #   self.specialists
    #end

    def num_of_calls #user count method
        self.calls.count 
    end

    def self.most_calls
        self.all.max_by {|ele| ele.num_of_calls }
    end


end

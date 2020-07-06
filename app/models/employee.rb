class Employee < ActiveRecord::Base
    has_many :manager_employees
    has_many :managers, through: :manager_employees
    has_many :call_logs
    has_many :specialists, through: :call_logs
    belongs_to :department

    def self.most_calls
        Employee.all.max_by {|t| t.call_logs.count}
    end
    
    def call(specialist_id)
        CallLog.create(employee:self, specialist:specialist_id)
    end

end

class Specialist < ActiveRecord::Base
    has_many :call_logs
    has_many :employees, through: :call_logs
end
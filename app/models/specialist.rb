class Specialist < ActiveRecord::Base
    has_many :calls
    has_many :employees, through: :calls

    #following are all built into ActiveRecord 
    # `Specialist#name`
    #     - Returns the specialist's name

    # `Specialist#employees`
    #   - Returns all of the specialist's employees

    # `Specialist.all`
    #   - Returns all of the specialists
end
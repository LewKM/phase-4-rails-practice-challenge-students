class Student < ApplicationRecord
    belongs_to :instructor
    
    validates :name, presence: true
    validates :age, presence: true, numericality: { minimum: 18 }
end

class Employee < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, numericality: {only_integer: true}
    validates :designation, presence: true
    validates :company, presence: true
end

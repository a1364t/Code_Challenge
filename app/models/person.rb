class Person < ApplicationRecord
    validates :first_name, :presence => true, :uniqueness => true
    has_many :affiliations
    has_many :locations
end

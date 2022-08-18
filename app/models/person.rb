class Person < ApplicationRecord
    validates :first_name, :presence => true, :uniqueness => true
    belongs_to :affiliation, :optional => true
    belongs_to :location, :optional => true
end

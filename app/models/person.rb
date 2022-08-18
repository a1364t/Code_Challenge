class Person < ApplicationRecord
    belongs_to :affiliation, :optional => true
    belongs_to :location, :optional => true
end

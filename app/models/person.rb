class Person < ApplicationRecord
    belongs_to :affiliation
    belongs_to :location, :optional => true
end

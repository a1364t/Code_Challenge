class Location < ApplicationRecord
    belongs_to :person, :optional => true
end

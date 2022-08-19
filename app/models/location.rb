class Location < ApplicationRecord
    belongs_to :person, :optional => true
    validates :title, format: { with: /\A[a-zA-Z]+\z/}
end

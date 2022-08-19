class Affiliation < ApplicationRecord
    has_many :people, dependent: :destroy
    validates :title, format: { with: /\A[a-zA-Z]+\z/}
end

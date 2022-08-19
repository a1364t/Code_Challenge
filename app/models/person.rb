class Person < ApplicationRecord
    validates :first_name, :presence => true, :uniqueness => true, format: { with: /\A[a-zA-Z]+\z/}   
    validates :species, format: { with: /\A[a-zA-Z]+\z/}    
    validates :gender, format: { with: /\A(?:m|M|male|Male|f|F|female|Female|Other)$\z/}
    belongs_to :affiliation, :optional => true
    belongs_to :location, :optional => true    
    self.per_page = 10
end

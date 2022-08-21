class Person < ApplicationRecord
    belongs_to :affiliation, :optional => true
    belongs_to :location, :optional => true
    
    validates :first_name, :presence => true, :uniqueness => true, format: { with: /\A[a-zA-Z]+\z/}   
    validates :species, format: { with: /\A[a-zA-Z]+\z/}    
    validates :gender, format: { with: /\A(?:m|M|male|Male|f|F|female|Female|Other)$\z/}

    self.per_page = 10

    # def self.open_spreadsheet(file)
    #     case File.extname(file.original_filename)
    #     when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
    #     when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    #     when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    #     else raise "Unknown file type #{file.original_filename}"
    # end

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Person.create! row.to_hash
        end

        # spreadsheet = open_spreadsheet(file)
        # header = spreadsheet.row(1)
        # (2..spreadsheet.last_row).each do |i|
        #     row = Hash[[header, spreadsheet.row(i)].transpose]
        # end           
        #     person = find_by_id(row["id"]) || new
        #     person.attributes = row.to_hash.slice(*accessible_attributes)
        #     person.save!

            # person_hash = row.to_hash
            # person = find_or_create_by!(Name: person_hash['first_name'])
            # person.update_attributes(person_hash)
        # end
    end
end

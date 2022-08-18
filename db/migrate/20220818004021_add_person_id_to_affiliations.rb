class AddPersonIdToAffiliations < ActiveRecord::Migration[5.2]
  def change
    add_column :affiliations, :person_id, :integer
  end
end

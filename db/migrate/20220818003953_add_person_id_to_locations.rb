class AddPersonIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :person_id, :integer
  end
end

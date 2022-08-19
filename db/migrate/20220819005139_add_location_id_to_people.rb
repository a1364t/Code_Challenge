class AddLocationIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :location_id, :integer
  end
end

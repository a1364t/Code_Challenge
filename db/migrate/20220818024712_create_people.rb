class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :first_name
      t.text :last_name
      t.text :species
      t.text :gender
      t.text :weapon
      t.text :vehicle

      t.timestamps
    end
  end
end

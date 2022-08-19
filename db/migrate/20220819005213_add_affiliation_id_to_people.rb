class AddAffiliationIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :affiliation_id, :integer
  end
end

class CreateOfficings < ActiveRecord::Migration[5.0]
  def change
    create_table :officings do |t|
      t.integer :company_id
      t.integer :location_id
    end
  end
end

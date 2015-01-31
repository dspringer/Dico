class CreateConstituents < ActiveRecord::Migration
  def change
    create_table :constituents do |t|

      t.string :email, index: true
      t.string :name
      t.string :street_address
      t.integer :zip_code
      t.string :district, index: true
      t.timestamps
    end
  end
end

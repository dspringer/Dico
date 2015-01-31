class CreateMcs < ActiveRecord::Migration
  def change
    create_table :mcs do |t|

      t.string :name
      t.string :district
      t.string :state
      t.timestamps
    end
  end
end

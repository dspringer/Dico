class CreateAlexes < ActiveRecord::Migration
  def change
    create_table :alexes do |t|
      
      t.string :name

      t.timestamps
    end
  end
end

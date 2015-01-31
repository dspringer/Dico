class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.datetime :event_time
      t.references :mc, index: true

      t.timestamps
    end
  end
end

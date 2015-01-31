class CreateMcInterests < ActiveRecord::Migration
  def change
    create_table :mc_interests do |t|

      t.references :mc, index: true
      t.references :issue, index: true
      t.datetime :entry_time, index: true
      t.timestamps
    end
  end
end

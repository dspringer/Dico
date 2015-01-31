class CreateEventIssues < ActiveRecord::Migration
  def change
    create_table :event_issues do |t|

      t.references :event, index: true
      t.references :issue, index: true
      t.timestamps
    end
  end
end

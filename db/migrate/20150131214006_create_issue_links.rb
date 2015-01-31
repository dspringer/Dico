class CreateIssueLinks < ActiveRecord::Migration
  def change
    create_table :issue_links do |t|

      t.references :issue, name: query_issue, index: true
      t.references :issue, name: result_issue, index: true

      t.timestamps
    end
  end
end

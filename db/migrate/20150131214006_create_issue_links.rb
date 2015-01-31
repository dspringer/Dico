class CreateIssueLinks < ActiveRecord::Migration
  def change
    create_table :create_issue_links do |t|

      t.integer :query_issue, index: true
      t.integer :result_issue, index: true
      t.timestamps
    end
  end
end


class Issue < ActiveRecord::Base
  has_many :issuelinks, :foreign_key => "query_issue", 
  :class_name => "IssueLink"

  has_many :resultIssuelinks, :through => :issuelinks
end


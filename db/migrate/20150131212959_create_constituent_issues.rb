class CreateConstituentIssues < ActiveRecord::Migration
  def change
    create_table :constituent_issues do |t|

      t.references :constitutent, index: true
      t.references :issue, index: true
      t.timestamps
    end
  end
end

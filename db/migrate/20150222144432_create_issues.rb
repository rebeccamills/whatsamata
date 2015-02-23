class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end

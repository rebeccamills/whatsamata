class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.integer :bus_id

      t.timestamps null: false
    end
  end
end

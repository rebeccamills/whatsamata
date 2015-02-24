class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.references :issue, index: true

      t.timestamps null: false
    end
    add_foreign_key :buses, :issues
  end
end

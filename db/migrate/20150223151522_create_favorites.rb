class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :busroute
      t.text :body
      t.references :user, index: true

      t.timestamps null: false
    end
    
  end
end

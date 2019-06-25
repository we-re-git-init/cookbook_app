class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :directions
      t.string :chef
      t.integer :prep_time
      t.string :image_url

      t.timestamps
    end
  end
end

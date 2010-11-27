class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :name
      t.string :source
      t.string :cuisine
      t.string :main_ingredient
      t.text :directions
      t.text :ingredients

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end

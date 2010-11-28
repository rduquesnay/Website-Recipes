class AddViewsToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :views, :integer, :default => 0
  end

  def self.down
    remove_column :recipes, :views
  end
end

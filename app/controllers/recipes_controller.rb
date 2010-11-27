class RecipesController < InheritedResources::Base
  def create
    create!(:notice => "Dude! Nice job creating that recipe.") { recipes_path }
  end
end

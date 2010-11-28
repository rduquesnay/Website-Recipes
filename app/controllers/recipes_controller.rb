class RecipesController < InheritedResources::Base
  def create
    create!(:notice => "Dude! Nice job creating that recipe.") { recipes_path }
  end
  
  def update
    update!(:notice => "Dude! Nice job updating that recipe.") { recipes_path }
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe.views += 1
    @recipe.save
  end
end

class CommentsController < InheritedResources::Base
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.new
    new!
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.recipe_id = params[:recipe_id]
    create!(:notice => "Dude! Nice comment.") { recipe_path(@comment.recipe) }
  end
end

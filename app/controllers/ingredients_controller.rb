class IngredientsController < ApplicationController

  def create
    @recipe = Recipe.find_by id: params[:recipe_id]
    @ingredient = Ingredient.new
    @ingredient.name = params[:ingredient][:name]
    @ingredient.quantity = params[:ingredient][:quantity]
    @ingredient.unit = params[:ingredient][:unit]
    @ingredient.recipe_id = params[:recipe_id]
    @ingredient.save
    redirect_to recipe_path(@recipe)
  end
end

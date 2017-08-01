class IngredientsController < ApplicationController

  def create
    @recipe = Recipe.find_by id: params[:recipe_id]
    @ingredient = Ingredient.new
    @ingredient.name = params[:ingredient][:name]
    @ingredient.quantity = params[:ingredient][:quantity]
    @ingredient.unit = params[:ingredient][:unit]
    @ingredient.recipe_id = params[:recipe_id]
    @ingredient.save
    redirect_to edit_recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.name = params[:ingredient][:name]
    @ingredient.quantity = params[:ingredient][:quantity]
    @ingredient.unit = params[:ingredient][:unit]
    @ingredient.save
    redirect_to edit_recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to edit_recipe_path(@recipe)
  end
end

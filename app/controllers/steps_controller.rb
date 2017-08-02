class StepsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.new
    @step.order = params[:step][:order]
    @step.directions = params[:step][:directions]
    @step.save
    redirect_to edit_recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
    @step.destroy
    redirect_to edit_recipe_path(@recipe)
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
    @step.order = params[:step][:order]
    @step.directions = params[:step][:directions]
    @step.save
    redirect_to edit_recipe_path(@recipe)
  end
end

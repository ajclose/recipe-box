class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by id: params[:id]
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.title = params[:recipe][:title]
    @recipe.description = params[:recipe][:description]
    @recipe.cook_time = params[:recipe][:cook_time]
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find_by id: params[:id]
  end

  def update
    @recipe = Recipe.find_by id: params[:id]
    @recipe.title = params[:recipe][:title]
    @recipe.description = params[:recipe][:description]
    @recipe.cook_time = params[:recipe][:cook_time]
    if @recipe.save
      redirect_to recipe_path
    else
      render :edit
    end
  end

  def destroy
    Recipe.destroy params[:id]
    redirect_to root_path
  end
end

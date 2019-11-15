class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredients = @cocktail.ingredients
    @ingredient = Ingredient.new
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end

class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.downcase.delete(".").split(", ")
  end

  def directions_list
    directions.split(", ")
  end
end

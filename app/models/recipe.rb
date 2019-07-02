class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.downcase.delete(".").split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def hours_minutes_prep_time
    result = ""
    hours = prep_time / 60
    minutes = prep_time % 60
    result += "#{hours} hours " if hours > 0
    result += "#{minutes} minutes" if minutes > 0
    result
  end
end

class Recipe
  # STATE:
  # ingredients - array
  # measurements - hash (w. ingredients)
  # name
  # steps [method]
  # BEHAVIOR:
  # add ingredient
  # set servings (amt. people)

  attr_reader :ingredients, :name, :servings
  def initialize(name, servings)
    @name = name
    @servings = servings
    @ingredients = {}
  end

  def add_ingredient(name, amount)
    @ingredients[name] = amount
  end
end

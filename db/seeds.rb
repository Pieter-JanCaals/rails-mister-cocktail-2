require ('open-uri')

ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)["drinks"]

ingredient1 = Ingredient.create(
  name: ingredients.sample["strIngredient1"]
)

ingredient2 = Ingredient.create(
  name: ingredients.sample["strIngredient1"]
)

ingredient3 = Ingredient.create(
  name: ingredients.sample["strIngredient1"]
)

cocktail1 = Cocktail.create(
  name: Faker::FunnyName.three_word_name
)

cocktail2 = Cocktail.create(
  name: Faker::FunnyName.three_word_name
)

dose1 = Dose.create(
  cocktail: cocktail1,
  ingredient: ingredient1,
  description: "Add 2ml"
)

dose2 = Dose.create(
  cocktail: cocktail1,
  ingredient: ingredient2,
  description: "Add 2ml"
)

dose3 = Dose.create(
  cocktail: cocktail1,
  ingredient: ingredient3,
  description: "Add 2ml"
)

dose4 = Dose.create(
  cocktail: cocktail2,
  ingredient: ingredient1,
  description: "Add 2ml"
)

dose5 = Dose.create(
  cocktail: cocktail2,
  ingredient: ingredient2,
  description: "Add 2ml"
)

dose6 = Dose.create(
  cocktail: cocktail2,
  ingredient: ingredient3,
  description: "Add 2ml"
)

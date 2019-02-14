require ('open-uri')
Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)["drinks"]

ingredients.each { |ingredient| Ingredient.create(name: ingredient["strIngredient1"])}

cocktail1 = Cocktail.create(
  name: Faker::FunnyName.three_word_name
)

cocktail2 = Cocktail.create(
  name: Faker::FunnyName.three_word_name
)

dose1 = Dose.create(
  cocktail: cocktail1,
  description: "Add 2ml",
  ingredient: Ingredient.first
)
dose1.ingredient = Ingredient.first

dose2 = Dose.create(
  cocktail: cocktail1,
  description: "Add 2ml",
  ingredient: Ingredient.second
)

dose3 = Dose.create(
  cocktail: cocktail1,
  description: "Add 2ml",
  ingredient: Ingredient.third
)

dose4 = Dose.create(
  cocktail: cocktail2,
  description: "Add 2ml",
  ingredient: Ingredient.first
)

dose5 = Dose.create(
  cocktail: cocktail2,
  description: "Add 2ml",
  ingredient: Ingredient.second
)

dose6 = Dose.create(
  cocktail: cocktail2,
  description: "Add 2ml",
  ingredient: Ingredient.third
)

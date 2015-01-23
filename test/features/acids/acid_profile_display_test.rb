require 'test_helper'

feature "Acid profile data is displayed on front page" do
  scenario "I can search up edamame", js: true do
    visit root_path
    edamame = foods(:edamame)

    food_search(edamame)
    check_acids(edamame)
  end
  scenario "I can consecutively search for two different foods, and see both of them displayed", js: true do
    visit root_path
    edamame = foods(:edamame)
    food_search(edamame)
    soy_milk = foods(:soy_milk)
    food_search(soy_milk)

    check_acids(edamame)
    check_acids(soy_milk)
  end
  scenario "I can delete a displayed food with a click", js: true do
    visit root_path
    edamame = foods(:edamame)
    food_search(edamame)
    click_on "Edamame"

    check_acids_missing(edamame)
  end
end

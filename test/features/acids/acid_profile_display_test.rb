require 'test_helper'

feature "Acid profile data is displayed on front page" do
  scenario "I can search up brown rice", js: true do
    load "#{Rails.root}/db/seeds.rb"
    visit root_path
    brown_rice = foods(:brown_rice)

    food_search(brown_rice)
    check_acids(brown_rice)
  end
  scenario "I can consecutively search for two different foods, and see both of them displayed", js: true do
    visit root_path
    brown_rice = foods(:brown_rice)
    food_search(brown_rice)
    whole_soybean = foods(:whole_soybean)
    food_search(whole_soybean)

    check_acids(brown_rice)
    check_acids(whole_soybean)
  end
  scenario "I can delete a displayed food with a click", js: true do
    visit root_path
    brown_rice = foods(:brown_rice)
    food_search(brown_rice)
    click_on "Brown Rice"

    check_acids_missing(brown_rice)
  end
end

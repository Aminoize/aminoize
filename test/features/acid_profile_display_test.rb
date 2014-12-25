require "test_helper"

feature "Acid profile data is displayed on front page" do
  scenario "I can search up brown rice" do
    load "#{Rails.root}/db/seeds.rb"
    visit root_path
    brown_rice = foods(:brown_rice)
    food_search(brown_rice)
    check_acids(brown_rice)
  end
  scenario "I can consecutively search for two different foods, and see both of them displayed" do
    visit root_path
  end
end

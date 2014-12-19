require "test_helper"

feature "Acid profile data is displayed on front page" do
  scenario "chart displays the amino acids for soy" do
    visit root_path
    page.must_have_content "Tryptophan"
  end
end

require "test_helper"

feature "ChartsCanDisplayData" do
  scenario "chart displays the amino acids for soy" do
    visit root_path
    page.must_have_content "0.53"
    page.must_have_content "0.324"
  end
end

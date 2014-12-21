require "test_helper"

feature "Acid profile data is displayed on front page" do
  scenario "chart displays the amino acids for soy" do
    soy = foods(:soy)
    visit root_path
    page.must_have_content soy.tryptophan
    page.must_have_content soy.rectified_tryptophan
    page.must_have_content soy.methionine
    page.must_have_content soy.phenylalanine
    page.must_have_content soy.rectified_phenylalanine
    page.must_have_content soy.lysine
    page.must_have_content soy.rectified_lysine
    save_and_open_page
  end
  scenario "I can search up brown rice" do
    visit root_path
    rice = foods(:brownrice)
    fill_in 'search', with: 'brown rice'
    click_button 'Aminoize!'
    page.must_have_content rice.tryptophan
    page.must_have_content rice.rectified_tryptophan
    page.must_have_content rice.methionine
    page.must_have_content rice.phenylalanine
    page.must_have_content rice.rectified_phenylalanine
    page.must_have_content rice.lysine
    page.must_have_content rice.rectified_lysine
  end
end

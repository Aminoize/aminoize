require "test_helper"

feature "Acid profile data is displayed on front page" do
  scenario "I can search up brown rice" do
    load "#{Rails.root}/db/seeds.rb"
    visit root_path
    rice = foods(:brownrice)
    fill_in 'search', with: 'Brown Rice'
    click_button 'Aminoize!'
    save_and_open_page
    page.must_have_content rice.tryptophan
    page.must_have_content rice.rectified_tryptophan
    page.must_have_content rice.methionine
    page.must_have_content rice.phenylalanine
    page.must_have_content rice.rectified_phenylalanine
    page.must_have_content rice.lysine
    page.must_have_content rice.rectified_lysine
  end
end

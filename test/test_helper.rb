ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'minitest/pride'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def food_search food
    fill_in 'search', with: food.name
    click_button 'Aminoize!'
  end

  def check_acids food
    page.must_have_content food.tryptophan
    page.must_have_content food.rectified_tryptophan
    page.must_have_content food.methionine
    page.must_have_content food.phenylalanine
    page.must_have_content food.rectified_phenylalanine
    page.must_have_content food.lysine
    page.must_have_content food.rectified_lysine
  end

  def check_acids_missing food
    page.wont_have_content food.tryptophan
    page.wont_have_content food.rectified_tryptophan
    page.wont_have_content food.methionine
    page.wont_have_content food.phenylalanine
    page.wont_have_content food.rectified_phenylalanine
    page.wont_have_content food.lysine
    page.wont_have_content food.rectified_lysine
  end
end

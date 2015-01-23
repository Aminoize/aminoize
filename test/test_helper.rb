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
    page.must_have_content food.histidine
    page.must_have_content food.isoleucine
    page.must_have_content food.leucine
    page.must_have_content food.lysine
    page.must_have_content food.methionine_cysteine
    page.must_have_content food.phenylalanine_tyrosine
    page.must_have_content food.threonine
    page.must_have_content food.tryptophan
    page.must_have_content food.valine
  end

  def check_acids_missing food
    page.wont_have_content food.histidine
    page.wont_have_content food.isoleucine
    page.wont_have_content food.leucine
    page.wont_have_content food.lysine
    page.wont_have_content food.methionine_cysteine
    page.wont_have_content food.phenylalanine_tyrosine
    page.wont_have_content food.threonine
    page.wont_have_content food.tryptophan
    page.wont_have_content food.valine
  end
end

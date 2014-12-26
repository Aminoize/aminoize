if ENV['SAUCY']
  require 'sauce'
  require 'sauce/capybara'

  Sauce.config do |config|
    config[:browsers] = [
      ['Linux', 'Chrome', nil],
    ]
  end
end

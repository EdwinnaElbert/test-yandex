# frozen_string_literal: true

require 'capybara/cucumber'
require 'capybara-webkit'
require 'pry'

require_relative 'cucumber_helper'

include CucumberHelper

World(CucumberHelper)

Capybara.default_driver = :webkit
Capybara.run_server = false
Capybara.save_path = "results/#{Date.today}"

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
  config.timeout = 10
  config.ignore_ssl_errors

  # config.raise_javascript_errors = true
  # config.debug = true
end

Capybara.add_selector(:my_link) do
  xpath { |text| "//a[text()='#{text}']|//a/span[text()='#{text}']" }
end

After do
  save_and_open_screenshot
end

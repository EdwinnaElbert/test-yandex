# frozen_string_literal: true

Before do
  Capybara.current_session.current_window.resize_to(19_200, 10_800)
end

Given(/Зайти на "(.*?)"/) do |link|
  visit link
end

Then(/Перейти по ссылке "(.*?)"/) do |text|
  find(:my_link, text).click
end

Then(/В верхнем меню перейти по ссылке "(.*?)"/) do |text|
  within :xpath, "//div[@class='home-arrow__tabs ']" do
    all(:my_link, text).first.click
  end
  sleep 2
end

Then(/Выбрать чекбокс "(.*?)"/) do |text|
  find(:xpath, "//input[@name='#{text}']").sibling(:xpath, './/div').click
end

Then(/Ввести в поле "(.*?)" значение "(.*?)"/) do |field, value|
  first(:xpath, "//label[text()='#{field}']").sibling(:xpath, './/input').fill_in with: value
end

Then(/Выбрать "(.*?)" в списке/) do |value|
  element = all(:xpath, '//article')[value.to_i - 1]
  CucumberHelper.data = all(:xpath, '//h3/a/span')[value.to_i - 1].text(:all)

  element.click
end

Then(/Сверить названия/) do
  within_window windows.last do
    assert_equal(CucumberHelper.data, first(:xpath, '//div/h1').text)
  end
end

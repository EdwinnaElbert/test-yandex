# frozen_string_literal: true

Feature: Yandex market

Background:
  Given 'Зайти на "http://yandex.ru"'
  When 'В верхнем меню перейти по ссылке "Маркет"'
  When 'Перейти по ссылке "Электроника"'

Scenario:
  Then 'Перейти по ссылке "Смартфоны"'
  Then 'Выбрать чекбокс "Производитель Samsung"'
  Then 'Ввести в поле "от" значение "40"'
  Then 'Выбрать "1" в списке'
  Then 'Сверить названия'

Scenario:
  Then 'Перейти по ссылке "Наушники и Bluetooth-гарнитуры"'
  Then 'Выбрать чекбокс "Производитель Beats"'
  Then 'Ввести в поле "от" значение "1"'
  Then 'Ввести в поле "до" значение "20000"'
  Then 'Выбрать "1" в списке'
  Then 'Сверить названия'

Scenario:
  Then 'Перейти по ссылке "Наушники"'

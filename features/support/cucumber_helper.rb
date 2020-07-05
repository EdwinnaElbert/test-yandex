# frozen_string_literal: true

module CucumberHelper
  attr_accessor :data

  def assert_equal(val1, val2)
    raise "Expected #{val1} and #{val2} to be equal. They are different." if val1 != val2
  end
end

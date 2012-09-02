#!/usr/bin/env ruby
# coding : utf-8

class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

require 'test/unit'

class StringExtensionText < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end


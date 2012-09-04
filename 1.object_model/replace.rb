#!/usr/bin/env ruby
# coding : utf-8
class Array
  def replace(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

require 'test/unit'
class StringExtensionText < Test::Unit::TestCase
  def test_replace
    book_topics = ["html", "java", "css"]
    book_topics.replace('java', 'ruby')
    expected = ["html", "ruby", "css"]
    assert_equal expected, book_topics
  end
end


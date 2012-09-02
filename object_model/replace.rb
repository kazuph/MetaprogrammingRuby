#!/usr/bin/env ruby
# coding : utf-8
def replace(array, from, to)
  array.each_with_index do |e, i|
    array[i] = to if e == from
  end
end

def test_replace
  book_topics = ["html", "java", "css"]
  replace = (book_topics, 'java', 'ruby')
  expected = ["html", "ruby", "css"]
  assert_equal expected, book_topics
end


#!/usr/bin/env ruby
# coding : utf-8
module Printable
  def print
    p "Printable\n"
  end

  def prepare_cover
    # ...
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    # ...
  end

  def print
    p "Document\n"
  end
end

class Book
  include Printable
  include Document

  #...
end

b = Book.new
b.print_to_screen

p Book.ancestors

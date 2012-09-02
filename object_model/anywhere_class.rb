#!/usr/bin/env ruby
# coding : utf-8

3.times do
  class C
    puts "Hellow"
  end
end

class D
  def x; 'x'; end
end

class D
  def y; 'y'; end
end

obj = D.new
p obj.x
p obj.y

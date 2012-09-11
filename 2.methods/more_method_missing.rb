#!/usr/bin/env ruby
# coding : utf-8

class Lawyer
  def method_missing(method, *args)
    puts "#{method}(#{arg.join(', ')})を呼び出した"
    puts "(ブロックを渡した)" if block_given?
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
end

# talk_simple(a, b)

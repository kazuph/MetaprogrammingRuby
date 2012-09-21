#!/usr/bin/env ruby
# coding : utf-8
class MyOpenStruct
  def initialize
    @attributes = {}
  end
  def method_missing(name, *args)
    attribute = name.to_s
    if attribute =~ /=$/
      @attributes[attribute.chop] = args[0]
    else
      @attributes[attribute]
    end
  end
end

icecream = MyOpenStruct.new
icecream.flavor = "バニラ" "hogehoge", [:asdf, :df]
p icecream.flavor

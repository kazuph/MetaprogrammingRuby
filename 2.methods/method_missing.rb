#!/usr/bin/env ruby
# coding : utf-8
class Lawyer;end

nick = Lawyer.new
# nick.talk_simple
nick.send :method_missing, :my_method

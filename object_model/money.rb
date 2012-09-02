#!/usr/bin/env ruby
# coding : utf-8
require 'money'
require 'pp'

p cents = 9999
bargain_price = Money.new(cents)
p bargain_price.methods
p bargain_price.cents
p bargain_price.currency
pp bargain_price.bank

# or

p standard_price = 100.to_money()

#!/usr/bin/env ruby
# coding : utf-8

class Movie < ActiveRecord::Base
end

movie = Movie.create
movie.title = "博士の異常な愛情"
p movie.title # => 博士の異常な愛情
movie.director = "スタンリー・キューブリック"

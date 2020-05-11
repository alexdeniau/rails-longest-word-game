require 'open-uri'
require 'nokogiri'



class GamesController < ApplicationController

  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    result = open(url).read
    @word = JSON.parse(result)

  end

end

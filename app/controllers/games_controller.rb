require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    existingword = URI.open(url).read
    existing = JSON.parse(existingword)
    @existence = existing['found']
  end
end

#https://wagon-dictionary.herokuapp.com/#{the input value}

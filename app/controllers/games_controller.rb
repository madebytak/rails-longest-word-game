require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @answer = params[:word]
    @choice_of_letters = params[:choice_of_letters]
    # break the answer to letters to check if part of the choices
    @answer.upcase.split('').each do |letter|
    if @choice_of_letters.include?(letter) &&
    end
  end

  def english_check(word)
    url = "https://wagon-dictionary.herokuapp.com/#{answer}"
    word_check = URI.open(url).read
    word = JSON.parse(word_check)
    word['found']
  end
end

# Sorry but #{@answer} can't be built out of the letter
# Sorry but #{@answer} does not seem to be a valid English word
# Congratultions "{@answer}" is a valid English word!
# need to check if the answer is a valid english word. Set as method to call it?
# pass the english_word check and give it to the score for tesing
# validate by checking if word is english is included in the choices of letters

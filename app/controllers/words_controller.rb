class WordsController < ApplicationController


  def index
    response = Unirest.get("https://wordsapiv1.p.mashape.com/words/happy",
    headers:{
      "X-Mashape-Key" => "<d2549d880amsh1c69053bac09586p147fd6jsn2e9ade2c341f>",
      "Accept" => "application/json"})
    # render json: response.parse(:json)
  end

end

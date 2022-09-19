class WordsController < ApplicationController


  def index
    response = Unirest.get("https://wordsapiv1.p.mashape.com/words/happy",
    headers:{
      "X-Mashape-Key" => "<#{Rails.application.credentials.words_api_key}>",
      "Accept" => "application/json"})
    # render json: response.parse(:json)
  end

end

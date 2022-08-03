class WordsController < ApplicationController
    require 'rest-client'
    require 'json'

    def index
        url = "https://random-words-api.vercel.app/word" 
        response = RestClient.get(url)
        @word = JSON.parse(response)

        
       
       
    end

    def search
        url = "https://api.dictionaryapi.dev/api/v2/entries/en/" +params[:search]
        response = RestClient.get(url)       
        #render json: response
        @result = JSON.parse(response)
    end
end

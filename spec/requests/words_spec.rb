require 'rails_helper'

RSpec.describe 'Words', type: :request do
  describe 'GET /words/:search' do
    it 'should return the meaning of word in json' do
      url = 'https://api.dictionaryapi.dev/api/v2/entries/en/apple'
      response = RestClient.get(url)
      expect(response).to include('words')
    end

    # it 'should return 404 not found when word not found' do
    #   url = 'https://api.dictionaryapi.dev/api/v2/entries/en/alex'
    #   expect(RestClient.get(url)).to raise_error(RestClient::NotFound)
    # end
  end

  describe 'root' do
    it 'should display random word' do
      url = 'https://random-words-api.vercel.app/word'
      response = RestClient.get(url)
      expect(response).to include('word')
    end
  end
end

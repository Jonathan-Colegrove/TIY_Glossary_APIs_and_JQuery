class SuggestionsController < ApplicationController
  def show_suggestion
    @term = params[:term]

    @results = HTTParty.get(URI.escape("http://api.wordnik.com/v4/word.json/#{@term}/definitions?limit=10&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5"))

    @definitions = @results.map { |result| result["text"] }
  end
end

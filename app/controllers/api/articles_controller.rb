class Api::ArticlesController < ApplicationController

  def index
    @articles = HTTP.get("https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=#{Rails.application.credentials.articles_api[:api_key]}")
    render json: @articles.parse
  end


end



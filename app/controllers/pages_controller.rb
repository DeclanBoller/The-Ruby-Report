class PagesController < ApplicationController
  def home
    @breaking_article = Category.find_by(:category => 'Breaking').articles.order(:created_at => :desc).limit(1).first
    @articles = Article.where.not(:id => @breaking_article.id, :exclusive => true).order(:created_at => :desc).limit(4)
    @exclusives = Article.where(:exclusive => true).limit(5)

    @info = HTTParty.get('http://api.openweathermap.org/data/2.5/forecast?id=2154855&units=metric&appid=baf7b333a9b4147414e183a5b3d0ba3a')
  end
end

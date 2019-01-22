class PagesController < ApplicationController
  def home
    @breaking_article = Category.find_by(:category => 'Breaking').articles.order(:created_at => :desc).limit(1).first
    @articles = Article.where.not(:id => @breaking_article.id).order(:created_at => :desc).limit(4)
    @exclusives = Article.where(:exclusive => true)
  end
end

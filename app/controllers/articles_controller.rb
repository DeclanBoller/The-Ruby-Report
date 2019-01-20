class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
    @image = Image.new
    @category = Category.new
  end

  def create
    article = Article.create article_params
    image = Image.create image_params
    category = Category.create category_params
    article.images << image
    article.categories << category
    redirect_to article
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    image = Image.create :image => params[:image]
    category = Category.create :category => params[:category]

    article.images << image
    article.categories << category

    article.update article_params
    redirect_to article
  end

  def destroy
    article = Article.find params[:id]
    image = Image.find params[:id]
    category = Category.find params[:id]

    article.destroy
    image.destroy
    category.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:headline, :story, :sources, :author, :exclusive, :image_id)
  end

  def image_params
    params.require(:image).permit(:image, :caption, :article_id)
  end

  def category_params
    params.require(:category).permit(:category, :importance)
  end
end

class ArticlesController < ApplicationController
  before_action :check_for_admin, :only => [:edit, :index, :new]

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
    image = Image.create :image => params[:image], :caption => params[:caption]

    article.images << image

    redirect_to article
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    image = Image.create :image => params[:image], :caption => params[:caption]
    category = Category.create :category => params[:category]

    article.images << image
    article.categories << category if category.valid?

    article.update article_params

    redirect_to article
  end

  def destroy
    article = Article.find params[:id]

    article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:headline, :story, :sources, :author, :exclusive, :image_id, :category_ids)
  end

  def image_params
    params.require(:image).permit(:image, :caption, :article_id)
  end

  def category_params
    params.require(:category).permit(:category)
  end
end

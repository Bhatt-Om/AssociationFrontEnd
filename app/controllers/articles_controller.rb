class ArticlesController < ApplicationController

  before_action :find_article , only: [:edit, :update, :show, :destroy]

  def index
    @articles = current_user.articles 
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_para)
    @article.user = current_user
    if @article.save
      flash[:notice] = "Successfully Created"
      redirect_to articles_path
    else
      flash[:notice] = "Somthig is wrong Created"
      render 'new'
    end

  end

  def edit
  end

  def update
    if @article.update(article_para)
      flash[:notice] = "Successfully Created"
      redirect_to articles_path
    else
      flash[:notice] = "Somthig is wrong Created"
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private 

  def find_article
    @article = Article.find(params[:id])
  end

  def article_para
    params.require(:article).permit(:title , :content)
  end
end

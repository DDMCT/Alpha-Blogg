class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    # to display input if required
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
      redirect_to articles_show(@article)
    end

end

class ArticlesController < ApplicationController
  def index
    @article = Article.all
    render json: @article
  end

  def create
    @article = Article.create(article_params)
    render json: @article
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(artist: params[:artist]);
    render json: @article
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      head :no_content, status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  private

    def article_params
      params.require(:article).permit(:artist, :band)
    end
end


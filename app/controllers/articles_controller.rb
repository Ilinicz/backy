class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :update, :destroy]

  respond_to :json, :content_type => 'application/json'
  
  # GET /articles
  # GET /articles.json
  def index
    respond_with Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    respond_with @article
  end

  # POST /articles
  # POST /articles.json
  def create
    respond_with Article.create(article_params)
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_with @article.update(article_params)
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    respond_with @article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end

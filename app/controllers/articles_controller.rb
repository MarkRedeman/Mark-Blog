class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def create
  	Article.create params[:article]
  	redirect_to articles_path, :notice => "Article succesfully created"
  end

  def edit
  	@article = Article.find params[:id]
  end

  def update
  	article = Article.find params[:id]
  	if article.update_attributes params[:article]
  		redirect_to articles_path, :notice => "Article succesfully updated"
  	else
  		redirect_to :back, :notice => 'There was an error upating the article.'
  	end
  end

  def destroy
  	Article.destroy params[:id]
  	redirect_to :back, :notice => "Article succesfully deleted."
  end

end

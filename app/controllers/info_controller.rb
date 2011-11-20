class InfoController < ApplicationController
  def index
  	@articles = Article.order("created_at ASC").limit(5)
  end

  def about
  end

  def portfolio
  end

end

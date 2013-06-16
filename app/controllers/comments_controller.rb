class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create!(params[:comment])
    redirect_to @article, :notice => "comments created!!"
  end
end

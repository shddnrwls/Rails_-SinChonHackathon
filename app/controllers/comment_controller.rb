class CommentController < ApplicationController
   def create
    @comment = Comment.new
    @comment.recommend_id = params[:recommend_id]
    @comment.content = params[:comment]
    @comment.save
    redirect_to "/home/recommend/#{@comment.recommend_id}"
  end

  def delete
    c=Comment.find(params[:comment_id])
    
    c.destroy
    redirect_to "/home/recommend/#{@comment.recommend_id}"
  end
end

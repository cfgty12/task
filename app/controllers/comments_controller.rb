class CommentsController < ApplicationController
    def new
    end
    
    def create
        comment = Comment.new
        comment.content = params[:content]
        comment.post_id = params[:post_id]
        comment.save
        redirect_to :back
    end

      
  def edit
      @comment = Comment.find(params[:id])
  end
  
  def update
      comment = Comment.find(params[:id])
      comment.destroy
      redirect_to root_url
  end
 
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        redirect_to :back
    end
end

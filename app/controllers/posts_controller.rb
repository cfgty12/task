class PostsController < ApplicationController
  def index
      @posts = Post.all
    
      unless session[:user_id].nil?
          @user_email = User.find(session[:user_id]).email
      end
  end
  
  def new
  end
  
  def show
      @post = Post.find(params[:id])
      @comments = @post.comments
  end
  
  def create
      post = Post.new
      post.title = params[:title]
      post.content = params[:content]
    #   post.image = params[:pic]
      post.save
      redirect_to root_url
  end
  
  
  def edit
      @post = Post.find(params[:id])
  end
  
  def update
      post = Post.find(params[:id])
      post.destroy
      redirect_to root_url
  end
  
  def destroy
      post = Post.find(params[:id])
      post.destroy
      redirect_to root_url
  end
end

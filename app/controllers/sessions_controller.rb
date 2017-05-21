class SessionsController < ApplicationController
  def new
  end

  def create
      person = User.where(email: params[:email], password: params[:password]).take
      # 있는지 없는지 찾기
      unless person.nil? 
          session[:user_id] = person.id
      end
      redirect_to root_url
  end       

  
  def destroy
      reset_session
      redirect_to root_url
  end
end

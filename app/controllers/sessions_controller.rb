class SessionsController < ApplicationController
  def new
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end 

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    elsif !session[:name]
      session[:name] = params[:name]
      redirect_to root_path
    end
  end
end
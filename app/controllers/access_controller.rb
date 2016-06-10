class AccessController < ApplicationController
  
	layout 'admin'
  def index
  	# display text & link
  end

  def login
  	# login form

  end

  def attempt_login
  	if params[:username].present? || params[:password].present?
  		found_user = AdminUser.where(:username => params[:username]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end
  		if authorized_user
        session[:user_id] = authorized_user.id
        session[:username] = authorized_user.username

  			flash[:notice] = "You are now loged in"
  			redirect_to(:action => 'index')
  		else
  			flash[:notice] = "Invalid username/password combination"
  			redirect_to(:action => 'login')
  		end
  	end
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
  	flash[:notice] = "Logged out"
  	redirect_to(:action => "login") 
  end

end

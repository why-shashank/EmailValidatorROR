class AdminsessionsController < ApplicationController
def create
  admin = Admin.find_by(username: params[:session][:username].downcase)
  if admin && admin.authenticate(params[:session][:password])
    session[:admin_id] = admin.id
    flash[:notice] = "Logged in successfully."
    redirect_to adapp_path
  else
    flash.now[:alert] = "Something wrong with your login details!!"
    render 'new'
  end
end
 
def destroy
  session[:admin_id] = nil
  flash[:notice] = "You have been logged out."
  redirect_to root_path
end
end
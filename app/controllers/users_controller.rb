class UsersController < ApplicationController

 def new
    @user = User.new
  end

  def create


   @user = User.new(user_params)
   if !User.where(username: user_params[ :username]).exists?  # to check is the new username is unique


    if @user.save
      redirect_to root_path
      flash[:notice] = "User Account created succesfully. Please login to use the application"
     
    else
      redirect_to signup_path
      flash[:notice] = "User Account not created due to some issues!!"
    end
     
   else
      redirect_to signup_path
      flash[:notice] = "Username already exists. Please choose a different one!!"
   end
 end
 
private
 
 def user_params
   params.require(:user).permit(:username,:password)
 end

end
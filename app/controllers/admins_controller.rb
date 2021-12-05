class AdminsController < ApplicationController

 def new
    @admin = Admin.new
  end

  def create
   @admin = Admin.new(user_params)
   if !Admin.where(username: user_params[ :username]).exists?  # to check is the new username is uniqu
   if @admin.save
     flash[:notice] = "Admin created succesfully. Please login to use the application."
     redirect_to root_path
   else
     
     flash[:notice] = "Admin Account not created due to some issues!!."
     render :new
   end

   else
      redirect_to create_admin_path
      flash[:notice] = "Username already exists. Please choose a different one!!"
    end

 end
 
private
 
 def user_params
   params.require(:admin).permit(:username,:password)
 end

end
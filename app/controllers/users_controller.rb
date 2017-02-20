class UsersController < ApplicationController
  def create
   user = User.create(user_params)
   redirect_to :root
 end

 private
   def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
   end
end

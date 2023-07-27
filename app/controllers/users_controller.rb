class UsersController < ApplicationController

  def index
    @users = User.all
  end

#   def new
    
#   end

#   def login
#   end

#   def create
#     @users = User.new(Users_params)
#     if @users.save
#       redirect_to "/users"
#     else
#       render :new, status: :unaccessable_entity
#     end
#   end



#   private

#   def Users_params
#     params.require(:user).require(:email, :password)
#   end

end

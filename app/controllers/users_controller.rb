class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end



  def logincheck
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password]) 
    redirect_to '/blogapps', notice: "Account is ceated Successfully"
    else
      flash[:error] = "Invalid Username Or Password"
      redirect_to "/blogapps/new"
    end
  end

  def create
    @users = User.new(users_params)
    if @users.save
      redirect_to root_path, notice: "Succesfully created account"
    else
      render :new # status: :unprocessable_entity
    end
  end


  def forgot_password
  end

  def reset_password
    user = User.find_by(email: params[:email])
    if user
      user.generate_password_reset_token
      # flash[:notice] 
      redirect_to root_path
    else
      flash[:error] = "User with this email address not found."
      render :forgot_password
    end
  end

  
        






  private

  def users_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
end

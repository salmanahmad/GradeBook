class SessionController < ApplicationController
  
  def new
    
  end
  
  def create
    @user = User.find_by_email(params["email"])
    password = Digest::SHA1.hexdigest params["password"]
    if @user && @user.password == password then
      session["user"] = {
        name: @user.email,
        type: @user.type
      }
      redirect_to assignments_path
    else
      flash["error"] = "Incorrect Login. Try again."
      render "new"
    end

  end
  
  def destroy
    session["user"] = nil
    redirect_to "/"
  end

end

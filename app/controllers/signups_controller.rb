class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @singup = Signup.new(params.require(:signup).permit(:email))
    if @singup.save
      redirect_to '/thanks'
    end
  end
end

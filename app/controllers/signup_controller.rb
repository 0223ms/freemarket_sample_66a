class SignupController < ApplicationController
  def index
  end

  def member
    @user = User.new
  end
  
  def phonenumber
    @user = User.new
  end

  def verification
    @user = User.new
  end

  def completed
    @user = User.new
  end
end

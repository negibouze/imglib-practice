# coding: utf-8

class ImglibController < ApplicationController

  def view
    @user = User.find_by_username_and_password(params[:username], params[:pswd])

    if @user.blank?
      @error = 'Login was fail.'
      render action: "login"
    else
      @imgs = Img.find(:all)
    end
  end
end

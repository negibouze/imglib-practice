# coding: utf-8

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def register
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        @msg = 'User was successfully created.'
      else
        format.html {render action: "new" }
      end
    end
  end
end

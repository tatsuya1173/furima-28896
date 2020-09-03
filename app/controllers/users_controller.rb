class UsersController < ApplicationController
  # before_action :authenticate_user!
  PER = 8
    def show
      @info = Information.limit(4).order("created_at DESC")
      # @user = User.find(params[:id])
      # @contents = @user.contents.limit(4).order("created_at DESC")
      @contents = Content.order("created_at DESC").where("private_flag=1").page(params[:page]).per(16)
    end

    def show_contents
      @user = User.find(params[:id])
      @contents = @user.contents.page(params[:page]).per(PER)
     
    end
    
  end
  
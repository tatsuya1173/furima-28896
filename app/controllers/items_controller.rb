class ItemsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  
  def index
    @item = Item.all()
  end

  def new
    @item = Item.new()
  end

  def create
    @user = User.find(current_user.id)
    @item = Item.new(items_params)
  
    if @item.save
    else
    flash[:alert] = '正しく入力されていない箇所があります。'
    render :new
    end
  end
  
  def edit
     @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
 
      if @item.user_id == current_user.id
        @item.update(update_params)
        redirect_to_root_path
  
      else
      flash[:alert] = '正しく入力されていない箇所があります。'
      render :edit
      end
  end

  def show
    @item = Item.find(params[:id])   #itemの該当idのレコードを取ってくる
  end

  def back
    render :new
  end

  def destroy
    @item = Item.find(params[:id])
     if @item.user_id == current_user.id
      @item.destroy #destroyメソッドを使用し対象のitemを削除する。
      redirect_to_root_path
     end
  end

      private
      def items_params   
        params.require(:item).permit(:user_id, :name, :price, :text, :image)
      end
      def update_params
        params.require(:item).permit(:user_id, :name, :price, :text, :image)
      end
      def correct_user
        @item = Item.find(params[:id])
        if user_signed_in?
          redirect_to("/") unless @item.user_id == current_user.id
        else redirect_to_root_path
        end
      end
end

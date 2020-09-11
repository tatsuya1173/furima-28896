class ExchangesController < ApplicationController
  before_action :set_active_hash ,only: [:new,:create]

  def new
    if user_signed_in?
      @user = User.find(current_user.id)
    else redirect_to new_user_session_path
    end
    @item = Item.find(params[:id])
    @exchange = Exchange.new();
 
  end

  def create
    if user_signed_in?
      @user = User.find(current_user.id)
    else redirect_to new_user_session_path
    end
    
    @item = Item.find(params[:id])
    
    @exchange = Exchange.new(exchanges_params)
    @exchange.build_shipping
    
  
    
    if @exchange.save
      redirect_to root_path
    else
    flash[:alert] = '正しく入力されていない箇所があります。'
    render :new
    end
  end

  def exchanges_params   
    params.permit(:id,:user_id,:item_id,shipping_attributes: [:exchanges_id,:city,:post_code,:prefecture_id,:phone_number,:address,:building])
    # params.permit(:id,:user_id,:item_id,:exchanges_id,:city,:post_code,:prefecture_id,:phone_number,:address,:building)
  end

  def set_active_hash  
    @prefectures = Prefecture.all()
  end


end

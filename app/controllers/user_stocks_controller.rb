class UserStocksController < ApplicationController
  def create 
    @stock = UserStock.create(user_id: params[:user_id], stock_id: params[:stock_id]) 
    # byebug
    if @stock.blank?
      flash[:alert] = "stock #{@stock.stock.name} was not added due to some error"
    else
      flash[:notice] = "stock was added successfully"
    end 
    redirect_to my_portfolio_path
    # byebug
  end
  def destroy
    stock = UserStock.find_by(user_id: current_user.id, stock_id: params[:id])
    if stock.destroy
      flash[:notice] = "Stock removed successfully."
    else
      flash[:alert] = "An error occured"
    end
    redirect_to my_portfolio_path
  end
end

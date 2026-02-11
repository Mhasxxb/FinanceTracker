class StocksController < ApplicationController

  def search
    if params[:stock] == ""
      respond_to do |format|
        flash.now[:alert] = "Input field is empty."
        format.js { render partial: 'users/result' }
      end 
      return
    end
    @stock = Stock.new_lookup(params[:stock].upcase)
    if @stock == nil
      respond_to do |format|
        flash.now[:notice] = "Stock not found."
        format.js { render partial: 'users/result' }
      end 
      return
    end
    respond_to do |format|
        format.js { render partial: 'users/result' }
    end
  end

end

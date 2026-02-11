class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end
  def my_friends  
    @friends = current_user.friends 
    # byebug
  end
  # def search
  #   render json: params[:friend]
  # end

  def search
    if params[:friend] == ""
      # byebug
      respond_to do |format|
        flash.now[:alert] = "Input field is empty."
        format.js { render partial: 'users/friend_result' }
      end 
      return
    end
    @friend = User.find_by(first_name: params[:friend])
    # byebug
    if @friend == nil
      respond_to do |format|
        flash.now[:notice] = "User not found."
        format.js { render partial: 'users/friend_result' }
      end 
      return
    end
    respond_to do |format|
        format.js { render partial: 'users/friend_result' }
    end
  end

  def show
    @user = User.find(params[:id])
  end
end

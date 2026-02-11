class FriendshipsController < ApplicationController
  def destroy
    # byebug
    friendship = Friendship.find_by(user: current_user, friend: params[:id])
    friendship.destroy
    flash[:notice] = "Removed friend successfully"
    redirect_to my_friends_path
  end
  def add_friend
      record = Friendship.find_by(user_id: params[:user_id], friend_id: params[:friend_id])
      if record
        flash[:alert] = "Already a friend."
        redirect_to my_friends_path  
        return
      end
      friend = Friendship.new(user_id: params[:user_id], friend_id: params[:friend_id])
      if friend.save 
        flash[:notice] = "Friend added successfully"
      else
        flash[:alert] = "Unable to add friend"
      end
      redirect_to my_friends_path  

  end 
end

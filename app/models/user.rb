class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_stocks
  has_many :stocks, through: :user_stocks
  has_many :friendships
  has_many :friends, through: :friendships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.name_lookup key
    @friend = User.find_by(first_name: key.downcase)
  end

  def stock_already_tracked?(ticker)
    stocks.where(ticker: ticker).blank?
  end

  def in_limit?
    stocks.count < 10      
  end

  def can_track_stock?(ticker)
    check = in_limit? && stock_already_tracked?(ticker)
    # byebug
    return check
  end

  def fullname
    if first_name || last_name
      "#{first_name.capitalize}  #{last_name.capitalize}"
    else
      return "Anonymus"
    end
  end
end

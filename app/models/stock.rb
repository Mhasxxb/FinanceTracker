class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :user, through: :user_stocks

  validates :name, :ticker, presence: true

  def self.new_lookup(ticker_symbol)
    stock = Stock.find_by(ticker: ticker_symbol)
    return stock
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   


Stock.create(ticker: "AAPL",  name: "Apple",             last_price: 185)
Stock.create(ticker: "MSFT",  name: "Microsoft",         last_price: 410)
Stock.create(ticker: "AMZN",  name: "Amazon",            last_price: 175)
Stock.create(ticker: "META",  name: "Meta Platforms",    last_price: 480)
Stock.create(ticker: "TSLA",  name: "Tesla",             last_price: 250)
Stock.create(ticker: "NVDA",  name: "NVIDIA",            last_price: 720)
Stock.create(ticker: "NFLX",  name: "Netflix",           last_price: 610)
Stock.create(ticker: "INTC",  name: "Intel",             last_price: 45)
Stock.create(ticker: "AMD",   name: "AMD",               last_price: 170)

Stock.create(ticker: "ORCL",  name: "Oracle",            last_price: 120)
Stock.create(ticker: "IBM",   name: "IBM",               last_price: 190)
Stock.create(ticker: "ADBE",  name: "Adobe",             last_price: 580)
Stock.create(ticker: "UBER",  name: "Uber",              last_price: 75)
Stock.create(ticker: "LYFT",  name: "Lyft",              last_price: 18)
Stock.create(ticker: "PYPL",  name: "PayPal",            last_price: 68)
Stock.create(ticker: "SQ",    name: "Block",             last_price: 82)
Stock.create(ticker: "SHOP",  name: "Shopify",           last_price: 90)
Stock.create(ticker: "BABA",  name: "Alibaba",           last_price: 75)
Stock.create(ticker: "SPOT",  name: "Spotify",           last_price: 310)



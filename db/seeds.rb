# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

portfolios = Portfolio.create([{name: 'Emeka', cash_balance: 120000},{name:'Noah', cash_balance: 190000}])
stock_transactions = StockTransaction.create([{name: 'Amazon', stock_ticker:'AMZN', transaction_type:'open', portfolio_id:1, average_price:3100,  date: DateTime.now, quantity: 100},{name: 'Apple', stock_ticker:'AAPL', transaction_type:'open', portfolio_id:1, average_price:119.9,  date: DateTime.now, quantity: 100}, {name: 'TESLA', stock_ticker:'TSLA', transaction_type:'open', portfolio_id:2, average_price:601,  date: DateTime.now, quantity: 100}])
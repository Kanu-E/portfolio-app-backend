# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

portfolios = Portfolio.create([{name: 'Emeka', cash_balance: 120000},{name:'Noah', cash_balance: 190000}])
trades = Trade.create([{name: 'Amazon', stock_ticker:'AMZN', trade_type:'open', portfolio_id:1, average_price:3400,  date: DateTime.now, quantity: 100},{name: 'Apple', stock_ticker:'AAPL', trade_type:'open', portfolio_id:1, average_price:139.9,  date: DateTime.now, quantity: 80}, {name: 'TESLA', stock_ticker:'TSLA', trade_type:'open', portfolio_id:2, average_price:601,  date: DateTime.now, quantity: 100}])
Trade.create(name: 'TESLA', stock_ticker:'TSLA', trade_type:'open', portfolio_id:2, average_price:621,  date: DateTime.now, quantity: 20)

trades = Trade.create([{name: 'Amazon', stock_ticker:'AMZN', trade_type:'open', portfolio_id:1, average_price:3400,  date: DateTime.now, quantity: 100},{name: 'Apple', stock_ticker:'AAPL', trade_type:'open', portfolio_id:1, average_price:139.9,  date: DateTime.now, quantity: 80}, {name: 'TESLA', stock_ticker:'TSLA', trade_type:'open', portfolio_id:2, average_price:601,  date: DateTime.now, quantity: 100}])
Trade.create(name: 'TESLA', stock_ticker:'TSLA', trade_type:'open', portfolio_id:2, average_price:721,  date: DateTime.now, quantity: 20)

trades = Trade.create([{name: 'Amazon', stock_ticker:'AMZN', trade_type:'close', portfolio_id:1, average_price:3540,  date: DateTime.now, quantity: 100},{name: 'Apple', stock_ticker:'AAPL', trade_type:'open', portfolio_id:1, average_price:139.9,  date: DateTime.now, quantity: 80}, {name: 'TESLA', stock_ticker:'TSLA', trade_type:'close', portfolio_id:2, average_price:601,  date: DateTime.now, quantity: 100}])
Trade.create(name: 'TESLA', stock_ticker:'TSLA', trade_type:'close', portfolio_id:2, average_price:603,  date: DateTime.now, quantity: 20)
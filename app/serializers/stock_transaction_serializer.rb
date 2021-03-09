class StockTransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :stock_ticker, :transaction_type, :portfolio_id, :average_price, :quantity
  belongs_to :Portfolio
end

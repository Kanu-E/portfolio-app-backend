class TradeSerializer < ActiveModel::Serializer
  attributes :id, :name, :stock_ticker, :trade_type, :portfolio_id, :average_price, :quantity
  belongs_to :Portfolio
end

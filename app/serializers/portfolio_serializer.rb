class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :cash_balance
  has_many :stock_transactions
end

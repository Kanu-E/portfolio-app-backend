class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :cash_balance, :trades
  has_many :trades
end

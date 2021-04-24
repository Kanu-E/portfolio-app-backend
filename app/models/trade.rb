class Trade < ApplicationRecord
    belongs_to :portfolio
    validates :stock_ticker, :quantity, :trade_type, presence: true
    validates_inclusion_of :trade_type, :in => ['open', 'close']
end

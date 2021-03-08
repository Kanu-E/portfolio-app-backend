class StockTransaction < ApplicationRecord
    belongs_to :portfolio
    validates :stock_ticker, :quantity, :transaction_type, presence: true
    validates_inclusion_of :transaction_type, :in => ['open', 'closed']
end

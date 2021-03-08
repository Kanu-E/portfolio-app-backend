class StockTransaction < ApplicationRecord
    belongs_to :portfolio
    validates :quantity, :transaction_type, presence: true
    validates :transaction_type, inclusion: { in: %w(open close),
 end

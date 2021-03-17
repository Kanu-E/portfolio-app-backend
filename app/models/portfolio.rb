class Portfolio < ApplicationRecord
    has_many :trades, dependent: :destroy

    def update_cash_balance(trades)
        amount = trades.quantity * trades.average_price
        if trades.trade_type == "open"
            if self.cash_balance >= amount
                self.cash_balance = self.cash_balance - amount
            self.save
            else
                return "Insufficient funds to carry out this trade"
            end
        elsif trades.trade_type == "close"
            self.cash_balance = self.cash_balance + amount
            self.save
        end
    end
end

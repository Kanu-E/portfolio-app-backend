class Portfolio < ApplicationRecord
    has_many :stock_transactions

    def update_cash_balance(stock_transactions)
        amount = stock_transactions.quantity * stock_transactions.average_price
        if stock_transactions.transaction_type == "open"
            if self.cash_balance >= amount
                self.cash_balance = self.cash_balance - amount
            self.save
            else
                return "Insufficient funds to carry out this transaction"
            end
        elsif stock_transactions.transaction_type == "close"
            self.cash_balance = self.cash_balance + amount
            self.save
        end
    end
end

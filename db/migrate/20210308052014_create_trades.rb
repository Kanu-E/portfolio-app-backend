class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.string :name
      t.string :stock_ticker
      t.string :trade_type
      t.references :portfolio, null: false, foreign_key: true
      t.float :average_price
      t.datetime :date
      t.integer :quantity

      t.timestamps
    end
  end
end

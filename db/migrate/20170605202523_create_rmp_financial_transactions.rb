class CreateRmpFinancialTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :rmp_financial_transactions do |t|
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end

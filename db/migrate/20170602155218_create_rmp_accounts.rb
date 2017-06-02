class CreateRmpAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :rmp_accounts do |t|
      t.string :account_type
      t.string :code
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

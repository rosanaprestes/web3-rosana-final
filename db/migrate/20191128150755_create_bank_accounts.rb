class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.string :account_number
      t.string :client
      t.date :date
      t.float :balance

      t.timestamps
    end
  end
end

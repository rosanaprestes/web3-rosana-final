class AddProviderToExpense < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :provider, null: false, foreign_key: true
  end
end

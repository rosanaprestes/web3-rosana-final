class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :expense
      t.float :value
      t.date :due_date
      t.date :pay_day
      t.string :status

      t.timestamps
    end
  end
end

class CreateGarantors < ActiveRecord::Migration[6.0]
  def change
    create_table :garantors do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.float :value_tranfer

      t.timestamps
    end
  end
end

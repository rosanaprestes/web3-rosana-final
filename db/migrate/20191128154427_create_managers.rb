class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :cpf
      t.string :telephone

      t.timestamps
    end
  end
end

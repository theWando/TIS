class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.references :partida

      t.timestamps
    end
    add_index :expenses, :partida_id
  end
end

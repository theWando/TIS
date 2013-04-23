class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.string :name
      t.decimal :amount_assigned
      t.decimal :amount_aviable
      t.references :budget

      t.timestamps
    end
    add_index :partidas, :budget_id
  end
end

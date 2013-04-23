class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.decimal :amount
      t.date :starts_on
      t.references :department

      t.timestamps
    end
    add_index :budgets, :department_id
  end
end

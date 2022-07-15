class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user
      t.integer :status
      t.integer :amount

      t.timestamps
    end
  end
end

class CreateRaitings < ActiveRecord::Migration[7.0]
  def change
    create_table :raitings do |t|
      t.references :user
      t.references :product
      t.integer :raiting # cuantas de 5 enestrellas

      t.timestamps
    end
  end
end

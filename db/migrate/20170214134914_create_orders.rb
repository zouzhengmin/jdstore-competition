class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
        t.integer :total, default: 0
        t.integer :user_id
        t.integer :billing_name
        t.integer :billing_adress
        t.integer :shipping_name
        t.integer :shipping_adress
        t.timestamps

      t.timestamps
    end
  end
end

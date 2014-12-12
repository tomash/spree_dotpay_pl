class CreateSpreeDotpayCallbacks < ActiveRecord::Migration
  def self.up
    create_table :spree_dotpay_callbacks do |t|
      t.text :params
      t.string :status
      t.string :transaction_id
      t.integer :order_id
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_dotpay_callbacks
  end
end

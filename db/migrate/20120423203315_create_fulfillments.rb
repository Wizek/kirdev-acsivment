class CreateFulfillments < ActiveRecord::Migration
  def change
    create_table :fulfillments do |t|
      t.datetime :date
      t.integer :status
      t.references :user
      t.references :achievement

      t.timestamps
    end
    add_index :fulfillments, :user_id
    add_index :fulfillments, :achievement_id
  end
end

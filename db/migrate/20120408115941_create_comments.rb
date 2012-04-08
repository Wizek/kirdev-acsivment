class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :visible
      t.references :user
      t.references :achievement

      t.timestamps
    end
  end
end

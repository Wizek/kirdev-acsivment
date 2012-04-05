class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :tag_type

      t.timestamps
    end
  end
end

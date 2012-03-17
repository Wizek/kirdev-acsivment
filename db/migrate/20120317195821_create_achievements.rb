class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :description
      t.boolean :suspended

      # hany szavazat kell hogy teljesuljon az acsivment
      t.integer :acceptance

      t.timestamps
    end
  end
end

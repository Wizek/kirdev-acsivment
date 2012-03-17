class AchievementUserAssoc < ActiveRecord::Migration
  def change
    add_column :achievements, :creator_id, :integer
    add_column :achievements, :supervisor_id, :integer

    add_index :achievements, :creator_id
    add_index :achievements, :supervisor_id
  end
end

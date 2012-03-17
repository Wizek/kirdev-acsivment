class JoinTableAchievementsTags < ActiveRecord::Migration
  def change
    create_table :achievements_tags do |t|
      t.integer :achievement_id
      t.integer :tag_id
    end
  end
end

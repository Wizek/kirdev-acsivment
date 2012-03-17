class AddStatusToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :status, :integer

  end
end

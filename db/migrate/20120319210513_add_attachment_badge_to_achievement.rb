class AddAttachmentBadgeToAchievement < ActiveRecord::Migration
  def self.up
    add_column :achievements, :badge_file_name, :string
    add_column :achievements, :badge_content_type, :string
    add_column :achievements, :badge_file_size, :integer
    add_column :achievements, :badge_updated_at, :datetime
  end

  def self.down
    remove_column :achievements, :badge_file_name
    remove_column :achievements, :badge_content_type
    remove_column :achievements, :badge_file_size
    remove_column :achievements, :badge_updated_at
  end
end

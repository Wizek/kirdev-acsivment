class Comment < ActiveRecord::Base
  after_initialize :default_values

  belongs_to :user
  belongs_to :achievement

  validates :content, :user, :achievement, :presence => true

  def default_values
    self.visible = true if self.visible.nil?

  end
end

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement

  validates :content, :user, :achievement, :presence => true
end

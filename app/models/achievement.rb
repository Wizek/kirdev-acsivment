class Achievement < ActiveRecord::Base
  attr_accessible  :name, :description, :suspended, :acceptance
  has_and_belongs_to_many :tags
  has_attached_file :badge, :styles => { :meduim => "300x300>", :thumb => "100x100>" }

  validates :name, :presence => true
  validates :description, :presence => true
  validates :status, :inclusion =>  {:in => [AchievementStatus::PUBLIC, AchievementStatus::RESTRICTED],
                                     :message => "%{value} is not an allowed status" }

  before_validation :default_values
  
  belongs_to :creator, :class_name => "User"
  belongs_to :supervisor, :class_name => "User"
  
  scope :public, where(:status => AchievementStatus::PUBLIC)
  scope :restricted, where(:status => AchievementStatus::RESTRICTED)

  def default_values
    self.status ||= AchievementStatus::PUBLIC
    self.suspended = false if self.suspended.nil?
  end

end

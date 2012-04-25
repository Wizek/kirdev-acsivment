class Achievement < ActiveRecord::Base
  attr_accessible  :name, :description, :suspended, :acceptance, :badge
  has_and_belongs_to_many :tags
  has_attached_file :badge, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :name, :acceptance, :presence => true
  validates :acceptance, :numericality => { :greater_than_or_equal_to => 1, :only_integer => true}
  validates :status, :inclusion =>  {:in => [AchievementStatus::PUBLIC, AchievementStatus::DRAFT],
                                     :message => "%{value} is not an allowed status" }
  validates :suspended, :inclusion => { :in => [true, false], :message => "%{value} is not allowed as bool" }

  before_validation :default_values
  
  belongs_to :creator, :class_name => "User"
  belongs_to :supervisor, :class_name => "User"
  has_many :comments
  
  def default_values
    self.suspended ||= false
    self.status ||= AchievementStatus::PUBLIC

    true
  end

end

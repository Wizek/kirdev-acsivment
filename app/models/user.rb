class User < ActiveRecord::Base
  has_secure_password
  before_validation :default_values
  attr_accessible :name, :email, :password, :password_confirmation
  validates :password, :presence => true, :on => :create
  validates :email, :role, :presence => true
  validates :role, :inclusion => { :in => Roles.roles }
  has_many :achievements, :foreign_key => "creator_id"
  has_many :comments

  # methods

  def has_role? role
    role = role.to_sym unless role.is_a? Symbol
    self.role && Roles.roles.include?(role) && self.role.to_sym == role
  end

  private

  def default_values
    self.role ||= :user
  end

end

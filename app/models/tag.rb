class Tag < ActiveRecord::Base
  has_and_belongs_to_many :achievements
  attr_accessible :name
  before_validation :default_values

  # type validation: megengdett ertekek ld. TagType osztaly
  validates :tag_type, :inclusion => {:in => [TagType::REGULAR, TagType::MODERATOR], :message => "%{value} is not an allowed type"}

  private

  def default_values
    self.tag_type = TagType::REGULAR
  end

end



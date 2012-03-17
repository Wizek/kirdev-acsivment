class Tag < ActiveRecord::Base
  has_and_belongs_to_many :achievements

  before_validation :default_values

  # type validation: megengdett ertekek ld. TagType osztaly
  validates :type, :inclusion => {:in => [TagType::REGULAR, TagType::MODERATOR], :message => "%{value} is not an allowed type"}

  private

  def default_values
    self.type = TagType::REGULAR
  end

end



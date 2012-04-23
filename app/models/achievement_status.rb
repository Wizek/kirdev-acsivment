class AchievementStatus
  # lathato publikusan
  PUBLIC = 1

  # elbiralasra var
  DRAFT = 2

  def self.all
    [PUBLIC, DRAFT]
  end
end
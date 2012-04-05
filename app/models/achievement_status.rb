class AchievementStatus
  # lathato publikusan
  PUBLIC = 1

  # elbiralasra var
  PENDING = 2

  def self.all
    [PUBLIC, PENDING]
  end
end
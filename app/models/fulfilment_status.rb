#encoding: UTF-8

##
# Acsivment teljesites statuszok
#
class FulfilmentStatus

  # Eles acsivment teljesites
  ACTIVE = 1

  # Felhasznalok altal jovahagyasra varo acsivment teljesites
  PENDING = 2

  # az osszes acsivment teljesites egy tombkent
  def all
    [ACTIVE, PENDING]
  end
end
class TagType
  # barki rakosgathatja a cimket
  REGULAR = 1

  # csak moderatori jogosultsaggal rendelekezo felhasznalo hasznalhatja a cimket
  MODERATOR = 2


  def self.all
    [REGULAR, MODERATOR]
  end
end
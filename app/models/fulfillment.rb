##
# Acsivment teljesites
#
# Egy acsivment teljesiteset jelzi
# Tartozik hozza
# * egy datum (date), ami kulonbozhet a letrehozas datumatot
# * egy user, aki teljesitette vagy teljesiteni akarja az acsivmentet
# * egy acsivment, amirol szol az egesz hacacare
#
class Fulfillment < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement
  attr_accessible :date
end

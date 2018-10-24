class Pin < ApplicationRecord
  #un pin est fait par un utilisateur et peut recevoir plusieurs commentaires
  belongs_to :user
  has_many :comments
end

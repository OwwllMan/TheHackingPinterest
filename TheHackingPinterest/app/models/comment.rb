class Comment < ApplicationRecord
  #un commentaire est fait par un utilisateur sur un pin
  belongs_to :pin
  belongs_to :user
end

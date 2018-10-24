class User < ApplicationRecord
  #un user peut créer plusieurs pins et plusieurs comments
  has_many :pins
  has_many :comments
end

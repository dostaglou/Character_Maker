class User < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_many :races, through: :characters

end

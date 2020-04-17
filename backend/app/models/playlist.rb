class Playlist < ApplicationRecord
  belongs_to :user
  has_many :listitems
  has_many :shows, through: :listitems
end

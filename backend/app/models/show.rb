class Show < ApplicationRecord
    has_many :comments
    has_many :listitems
    has_many :users, through: :comments
    has_many :playlists, through: :listitems
end

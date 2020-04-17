class User < ApplicationRecord
    has_many :comments
    has_many :playlists
    has_many :shows, through: :playlists
end

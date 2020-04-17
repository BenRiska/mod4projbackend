class Listitem < ApplicationRecord
    belongs_to :playlist
    belongs_to :show
end

class Movie < ApplicationRecord
    validates :overview, presence: true
    validates :title, presence: true, uniqueness: true
    has_many :bookmarks
    validates_associated :bookmarks
end

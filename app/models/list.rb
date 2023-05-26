class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
    has_many :bookmarks, dependent: :destroy
    validates_associated :bookmarks
    has_many :movies, through: :bookmarks
    validates_associated :movies
end

class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_for_bookmark
  validates :title, uniqueness: true, presence: true
  private
  validates :overview, presence: true

  def check_for_bookmark
    return false unless bookmarks.any?
  end
end

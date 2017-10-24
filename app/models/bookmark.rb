class Bookmark < ApplicationRecord
  validates :page_num, presence: true
  belongs_to :book
end

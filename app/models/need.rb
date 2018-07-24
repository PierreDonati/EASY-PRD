class Need < ApplicationRecord
  belongs_to :user
  belongs_to :feature

  validates :description, presence: true
end

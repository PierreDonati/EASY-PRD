class Feature < ApplicationRecord
  belongs_to :user
  has_many :needs, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end

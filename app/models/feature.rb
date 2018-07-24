class Feature < ApplicationRecord
  belongs_to :user
  has_many :needs

  validates :name, presence: true
  validates :description, presence: true
end

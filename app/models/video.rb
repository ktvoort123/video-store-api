class Video < ApplicationRecord
  validates :title, presence: true
  validates :available_inventory, presence: true
  validates :total_inventory, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  
  has_many :rentals, dependent: :destroy
  has_many :customers, :through => :rentals
end

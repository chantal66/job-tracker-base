class Location < ActiveRecord::Base
  validates :location , presence: true
  validates :location , uniqueness: true
  has_many :officings
  has_many :companies, through: :officings
end

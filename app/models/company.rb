class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :jobs
  has_many :officings
  has_many :locations, through: :officings

  def count(company, location)
    company.locations.where(location: location).count
  end
end

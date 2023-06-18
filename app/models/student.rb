class Student < ApplicationRecord
  belongs_to :track

  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :track, presence: true
end

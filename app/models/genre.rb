class Genre < ActiveRecord::Base
  validates :name, presence: true

  has_many :films
  has_many :directors, through: :films
end

class Company < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :quotes, dependent: :nullify

  validates :name, presence: true
end

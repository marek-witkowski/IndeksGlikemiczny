# frozen_string_literal: true

class ProductType < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  has_many :products
end

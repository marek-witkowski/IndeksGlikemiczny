# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :unit
  belongs_to :product_type
end

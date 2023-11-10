# frozen_string_literal: true

# == Schema Information
#
# Table name: product_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProductType < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  has_many :products
end

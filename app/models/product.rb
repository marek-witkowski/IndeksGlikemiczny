# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  calorific_value :integer
#  glycemic_index  :integer
#  name            :string
#  weight          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  product_type_id :integer          not null
#  unit_id         :integer          not null
#
# Indexes
#
#  index_products_on_product_type_id  (product_type_id)
#  index_products_on_unit_id          (unit_id)
#
# Foreign Keys
#
#  product_type_id  (product_type_id => product_types.id)
#  unit_id          (unit_id => units.id)
#
class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :unit
  belongs_to :product_type
end

# frozen_string_literal: true

# Product Controller
class ProductController < ApplicationController
  # @return [Object]
  def index
    @product = Product.all
    @unit = Unit.all
    @producttype = ProductType.all
  end
end

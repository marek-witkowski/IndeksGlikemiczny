# frozen_string_literal: true

# Product Controller
class ProductController < ApplicationController
  # @return [Object]
  def index
    @product = Product.all
  end
end

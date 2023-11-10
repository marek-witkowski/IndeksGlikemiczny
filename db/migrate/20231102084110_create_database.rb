# frozen_string_literal: true

# Create database
class CreateDatabase < ActiveRecord::Migration[7.1]
  def change
    create_table 'product_types', force: :cascade do |t|
      t.string 'name'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end

    create_table 'products', force: :cascade do |t|
      t.string 'name'
      t.integer 'calorific_value'
      t.integer 'glycemic_index'
      t.integer 'weight'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.integer 'unit_id', null: false
      t.integer 'product_type_id', null: false
      t.index ['product_type_id'], name: 'index_products_on_product_type_id'
      t.index ['unit_id'], name: 'index_products_on_unit_id'
    end

    create_table 'units', force: :cascade do |t|
      t.string 'name'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end

    create_table 'views', force: :cascade do |t|
      t.string 'product'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end

    add_foreign_key 'products', 'product_types'
    add_foreign_key 'products', 'units'
  end
end

# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_save :set_total

  def total
    # byebug
    product.price * quantity
  end

  def set_total
    self[:total] = total * quantity
  end
end

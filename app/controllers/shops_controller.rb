# frozen_string_literal: true

class ShopsController < ApplicationController
  skip_before_action :require_login, only: [:index]
  def index
    @products = Product.all

    @order_item = current_order.order_items.new
  end

  def show
    @products = Product.find(params[:id])
  end
end

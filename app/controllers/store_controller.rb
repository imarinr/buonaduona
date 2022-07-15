class StoreController < ApplicationController

  def index
    @products = Product.all
  end

  def cart
  end

  def add_to_cart
  end
end

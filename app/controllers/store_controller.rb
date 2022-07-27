class StoreController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.where.not(id: params[:id])
  end

  def cart
  end

  def add_to_cart
  end
end

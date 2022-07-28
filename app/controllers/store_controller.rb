class StoreController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.where.not(id: params[:id])
  end

  def under_construction
    render template: 'store/404', layout: false, status: :not_found
  end

  def cart
  end

  def add_to_cart
  end
end

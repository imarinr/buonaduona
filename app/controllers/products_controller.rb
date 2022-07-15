class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
    end

    def create
    end

    def update
        redirect_to controller: 'products', action: 'index'
    end

    def delete
    end

    def edit
        @product = Product.find(params[:id])
    end
end

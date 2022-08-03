class ProductsController < ApplicationController
    before_action :authenticate_user!
    layout 'layouts/backstage'

    def index
        @products = Product.all
        authorize Product
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def show
        redirect_to products_path
    end

    def create
        @product = Product.create product_params
        redirect_to products_path
    end

    def update
        @product = Product.find(params[:id])
        @product.update product_params
        redirect_to products_path
    end

    def destroy
        puts "\n\n\n-------Destroy\n----------"
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end


    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :stock, :available)
    end
end

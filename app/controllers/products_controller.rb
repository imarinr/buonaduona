class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    # lo utilizo como metodo auxiliar de destroy ya que no he descubierto como hacer que funcione
    def show
        if params[:method] == 'delete' && !Product.find(params[:id]).nil?
            destroy
        else
            redirect_to index_products_path
        end
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.create product_params_create
        redirect_to index_products_path
    end

    def update
        @product = Product.find(product_params_update[:id])
        @product.update product_params_update
        redirect_to index_products_path
    end

    def destroy
        puts "\n\n\n-------Destroy\n----------"
        Product.find(params[:id]).delete
        redirect_to index_products_path
    end


    private

    def product_params_update
        params.require(:product).permit(:id, :name, :description, :price, :stock, :available)
    end

    def product_params_create
        params.require(:product).permit(:name, :description, :price, :stock, :available)
    end
end

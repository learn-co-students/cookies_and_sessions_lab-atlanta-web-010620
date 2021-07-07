class ProductsController < ApplicationController
    def index 
        @items = session[:cart]
    end

    def add
        cart << params[:product]
        render :index
    end
end

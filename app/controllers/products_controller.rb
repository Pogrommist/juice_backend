class ProductsController < ApiController
	before_action :product_params, only: [:new, :create]

	def index
		@products = Product.all
		render json: @products
	end

	def destroy
		Product.find(params[:id]).destroy
	end

	def new 
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		# redirect_to products_path if @product.save
		render json: @product if @product.save
	end

	private

	def product_params
		params.require(:product).permit(:name, :flavor, :initial_price, :full_price)
	end
end

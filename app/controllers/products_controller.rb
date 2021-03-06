# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy favorite]

  # GET /products
  # GET /products.json
  def index
    @search_term = params["search"].try(:[], "input_search")

    if params["search"].present? && !params["search"]["input_search"].blank?
      query = "%#{params['search']['input_search']}%"
      @products = Product.joins(:brand).where("products.name ILIKE ? OR brands.name ILIKE ?", query, query)
    else
      @products = Product.all
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show; end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def favorite
    @product = Product.find params[:id]

    if request.put?
      current_user.favorites << @product
      redirect_back fallback_location: product_path, notice: "You successfully favorited #{@product.name}"
    elsif request.delete?
      current_user.favorites.delete(@product)
      redirect_back fallback_location: product_path, notice: "You successfully unfavorited #{@product.name}"
    else
      redirect_back fallback_location: product_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_amount
      @myAmount = Amount.find_by(product: product, ingredient: ingredient)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :avatar, :product_category_id, :brand_id, :description, { ingredient_ids: [] }, { allergen_ids: [] }, :my_amount)
    end
end

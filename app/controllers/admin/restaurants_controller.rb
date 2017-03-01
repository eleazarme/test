class Admin::RestaurantsController < ApplicationController
  before_action :set_admin_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /admin/restaurants
  # GET /admin/restaurants.json
  def index
    @admin_restaurants = Admin::Restaurant.all
  end

  # GET /admin/restaurants/1
  # GET /admin/restaurants/1.json
  def show
  end

  # GET /admin/restaurants/new
  def new
    @admin_restaurant = Admin::Restaurant.new
  end

  # GET /admin/restaurants/1/edit
  def edit
  end

  # POST /admin/restaurants
  # POST /admin/restaurants.json
  def create
    @admin_restaurant = Admin::Restaurant.new(admin_restaurant_params)

    respond_to do |format|
      if @admin_restaurant.save
        format.html { redirect_to @admin_restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @admin_restaurant }
      else
        format.html { render :new }
        format.json { render json: @admin_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/restaurants/1
  # PATCH/PUT /admin/restaurants/1.json
  def update
    respond_to do |format|
      if @admin_restaurant.update(admin_restaurant_params)
        format.html { redirect_to @admin_restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @admin_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/restaurants/1
  # DELETE /admin/restaurants/1.json
  def destroy
    @admin_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to admin_restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_restaurant
      @admin_restaurant = Admin::Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_restaurant_params
      params.require(:admin_restaurant).permit(:name, :description, :address, :phone, :logo)
    end
end

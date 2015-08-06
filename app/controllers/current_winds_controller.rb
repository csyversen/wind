class CurrentWindsController < ApplicationController
  before_action :set_current_wind, only: [:show, :edit, :update, :destroy]

  geocode_ip_address

  # GET /current_winds
  # GET /current_winds.json
  def index
    if geo = session[:geo_location]
      wind = CurrentWind.new( lat: geo["lat"], lng: geo["lng"] )
      @speed = wind.speed
      @bearing = wind.bearing
    end
  end

  # GET /current_winds/1
  # GET /current_winds/1.json
  def show
  end

  # GET /current_winds/new
  def new
    @current_wind = CurrentWind.new
  end

  # GET /current_winds/1/edit
  def edit
  end

  # POST /current_winds
  # POST /current_winds.json
  def create
    @current_wind = CurrentWind.new(current_wind_params)

    respond_to do |format|
      if @current_wind.save
        format.html { redirect_to @current_wind, notice: 'Current wind was successfully created.' }
        format.json { render :show, status: :created, location: @current_wind }
      else
        format.html { render :new }
        format.json { render json: @current_wind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_winds/1
  # PATCH/PUT /current_winds/1.json
  def update
    respond_to do |format|
      if @current_wind.update(current_wind_params)
        format.html { redirect_to @current_wind, notice: 'Current wind was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_wind }
      else
        format.html { render :edit }
        format.json { render json: @current_wind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_winds/1
  # DELETE /current_winds/1.json
  def destroy
    @current_wind.destroy
    respond_to do |format|
      format.html { redirect_to current_winds_url, notice: 'Current wind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_wind
      @current_wind = CurrentWind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_wind_params
      params[:current_wind]
    end
end

class WindsController < ApplicationController
  before_action :set_wind, only: [:show, :edit, :update, :destroy]

  include WindsHelper

  # GET /winds
  # GET /winds.json
  def index
    geo = ip_lookup ( request.remote_ip )
    wind = Wind.new( lat: geo.lat, lng: geo.lng )
    loc = wind.location
    @speed = wind.speed
    @bearing = wind.bearing
    @citystate = "#{loc.city}, #{loc.state}"
  end


  # POST /winds
  # POST /winds.json
  def create
    @wind = Wind.new(wind_params)

    respond_to do |format|
      if @wind.save
        format.html { redirect_to @wind, notice: 'Wind was successfully created.' }
        format.json { render :show, status: :created, location: @wind }
      else
        format.html { render :new }
        format.json { render json: @wind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winds/1
  # PATCH/PUT /winds/1.json
  def update
    respond_to do |format|
      if @wind.update(wind_params)
        format.html { redirect_to @wind, notice: 'Wind was successfully updated.' }
        format.json { render :show, status: :ok, location: @wind }
      else
        format.html { render :edit }
        format.json { render json: @wind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winds/1
  # DELETE /winds/1.json
  def destroy
    @wind.destroy
    respond_to do |format|
      format.html { redirect_to winds_url, notice: 'Wind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wind
      @wind = Wind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wind_params
      params[:wind]
    end

end

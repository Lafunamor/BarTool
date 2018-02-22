class ShiftLocationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shift_location, only: [:show, :edit, :update, :destroy]

  # GET /shift_locations
  # GET /shift_locations.json
  def index
    @shift_locations = ShiftLocation.all
  end

  # GET /shift_locations/1
  # GET /shift_locations/1.json
  def show
  end

  # GET /shift_locations/new
  def new
    @shift_location = ShiftLocation.new
  end

  # GET /shift_locations/1/edit
  def edit
  end

  # POST /shift_locations
  # POST /shift_locations.json
  def create
    @shift_location = ShiftLocation.new(shift_location_params)

    respond_to do |format|
      if @shift_location.save
        format.html { redirect_to @shift_location, notice: 'Shift location was successfully created.' }
        format.json { render :show, status: :created, location: @shift_location }
      else
        format.html { render :new }
        format.json { render json: @shift_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_locations/1
  # PATCH/PUT /shift_locations/1.json
  def update
    respond_to do |format|
      if @shift_location.update(shift_location_params)
        format.html { redirect_to @shift_location, notice: 'Shift location was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_location }
      else
        format.html { render :edit }
        format.json { render json: @shift_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_locations/1
  # DELETE /shift_locations/1.json
  def destroy
    @shift_location.destroy
    respond_to do |format|
      format.html { redirect_to shift_locations_url, notice: 'Shift location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_location
      @shift_location = ShiftLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_location_params
      params.fetch(:shift_location, {})
    end
end

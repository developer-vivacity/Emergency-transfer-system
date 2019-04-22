class MassUnitsController < ApplicationController
  before_action :set_mass_unit, only: [:show, :edit, :update, :destroy]

  # GET /mass_units
  # GET /mass_units.json
  def index
    @mass_units = MassUnit.all
  end

  # GET /mass_units/1
  # GET /mass_units/1.json
  def show
  end

  # GET /mass_units/new
  def new
    @mass_unit = MassUnit.new
  end

  # GET /mass_units/1/edit
  def edit
  end

  # POST /mass_units
  # POST /mass_units.json
  def create
    @mass_unit = MassUnit.new(mass_unit_params)

    respond_to do |format|
      if @mass_unit.save
        format.html { redirect_to :mass_units, notice: 'Mass unit was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @mass_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mass_units/1
  # PATCH/PUT /mass_units/1.json
  def update
    respond_to do |format|
      if @mass_unit.update(mass_unit_params)
        format.html { redirect_to :mass_units, notice: 'Mass unit was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @mass_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mass_units/1
  # DELETE /mass_units/1.json
  def destroy
    @mass_unit.destroy
    respond_to do |format|
      format.html { redirect_to mass_units_url, notice: 'Mass unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mass_unit
      @mass_unit = MassUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mass_unit_params
      params.require(:mass_unit).permit(:unit)
    end
end

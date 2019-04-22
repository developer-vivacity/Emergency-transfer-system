class FrequencyUnitsController < ApplicationController
  before_action :set_frequency_unit, only: [:show, :edit, :update, :destroy]

  # GET /frequency_units
  # GET /frequency_units.json
  def index
    @frequency_units = FrequencyUnit.all
  end

  # GET /frequency_units/1
  # GET /frequency_units/1.json
  def show
  end

  # GET /frequency_units/new
  def new
    @frequency_unit = FrequencyUnit.new
  end

  # GET /frequency_units/1/edit
  def edit
  end

  # POST /frequency_units
  # POST /frequency_units.json
  def create
    @frequency_unit = FrequencyUnit.new(frequency_unit_params)

    respond_to do |format|
      if @frequency_unit.save
        format.html { redirect_to :frequency_units, notice: 'Frequency unit was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @frequency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequency_units/1
  # PATCH/PUT /frequency_units/1.json
  def update
    respond_to do |format|
      if @frequency_unit.update(frequency_unit_params)
        format.html { redirect_to :frequency_units, notice: 'Frequency unit was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @frequency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequency_units/1
  # DELETE /frequency_units/1.json
  def destroy
    @frequency_unit.destroy
    respond_to do |format|
      format.html { redirect_to frequency_units_url, notice: 'Frequency unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequency_unit
      @frequency_unit = FrequencyUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frequency_unit_params
      params.require(:frequency_unit).permit(:name)
    end
end

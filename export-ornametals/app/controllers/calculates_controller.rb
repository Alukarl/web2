class CalculatesController < ApplicationController
  before_action :set_calculate, only: [:show, :edit, :update, :destroy]

  # GET /calculates
  # GET /calculates.json
  def index
    @calculates = Calculate.all
  end

  # GET /calculates/1
  # GET /calculates/1.json
  def show
  end

  # GET /calculates/new
  def new
    @calculate = Calculate.new
  end

  # GET /calculates/1/edit
  def edit
  end

  #PATCH/PUT
  def calcular
  respond_to do |format|
    x = Calculate.find(params[:id])
    container = Containert.find(x.Containert_id)
    plant = Plant.find(x.Plant_id)
    way = Way.find(x.Way_id)
  	cantidad=container.m_area.to_f/plant.m_area.to_f
  	cant_contenedor=x.number/cantidad
  	temp=plant.temperature-((way.stopes*container.depreciation)/(way.distance/80))
    @calculator=x
  	if @calculator.update_attributes(:cant_container => cant_contenedor, :temp_carry => temp)

            format.json { render :show, status: :ok, location: @calculator }
        else
          format.json { render json: @calculator.errors, status: :unprocessable_entity }
        end
    end
  end

  # POST /calculates
  # POST /calculates.json
  def create
    @calculate = Calculate.new(calculate_params)

    respond_to do |format|
      if @calculate.save
        format.json { render :show, status: :created, location: @calculate }
      else
        format.json { render json: @calculate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculates/1
  # PATCH/PUT /calculates/1.json
  def update
    respond_to do |format|
      if @calculate.update(calculate_params)
        format.json { render :show, status: :ok, location: @calculate }
      else
        format.json { render json: @calculate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculates/1
  # DELETE /calculates/1.json
  def destroy
    @calculate.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculate
      @calculate = Calculate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculate_params
      params.require(:calculate).permit(:number, :temp_carry, :cant_container, :Plant_id, :Containert_id, :Way_id)
    end
end

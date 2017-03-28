class ContainertsController < ApplicationController
  before_action :set_containert, only: [:show, :edit, :update, :destroy]

  # GET /containerts
  # GET /containerts.json
  def index
    @containerts = Containert.all
  end

  # GET /containerts/1
  # GET /containerts/1.json
  def show
  end

  # GET /containerts/new
  def new
    @containert = Containert.new
  end

  # GET /containerts/1/edit
  def edit
  end

  # POST /containerts
  # POST /containerts.json
  def create
    @containert = Containert.new(containert_params)

    respond_to do |format|
      if @containert.save
        format.json { render :show, status: :created, location: @containert }
      else
        format.json { render json: @containert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /containerts/1
  # PATCH/PUT /containerts/1.json
  def update
    respond_to do |format|
      if @containert.update(containert_params)
        format.json { render :show, status: :ok, location: @containert }
      else
        format.json { render json: @containert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /containerts/1
  # DELETE /containerts/1.json
  def destroy
    @containert.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_containert
      @containert = Containert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def containert_params
      params.require(:containert).permit(:depreciation, :m_area)
    end
end

class RecyclingCentersController < ApplicationController
  before_action :set_recycling_center, only: [:show, :edit, :update, :destroy]

  # GET /recycling_centers
  # GET /recycling_centers.json
  def index
    @recycling_centers = RecyclingCenter.all
  end

  # GET /recycling_centers/1
  # GET /recycling_centers/1.json
  def show
  end

  # GET /recycling_centers/new
  def new
    @recycling_center = RecyclingCenter.new
  end

  # GET /recycling_centers/1/edit
  def edit
  end

  # POST /recycling_centers
  # POST /recycling_centers.json
  def create
    @recycling_center = RecyclingCenter.new(recycling_center_params)

    respond_to do |format|
      if @recycling_center.save
        format.html { redirect_to @recycling_center, notice: 'Recycling center was successfully created.' }
        format.json { render :show, status: :created, location: @recycling_center }
      else
        format.html { render :new }
        format.json { render json: @recycling_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recycling_centers/1
  # PATCH/PUT /recycling_centers/1.json
  def update
    respond_to do |format|
      if @recycling_center.update(recycling_center_params)
        format.html { redirect_to @recycling_center, notice: 'Recycling center was successfully updated.' }
        format.json { render :show, status: :ok, location: @recycling_center }
      else
        format.html { render :edit }
        format.json { render json: @recycling_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recycling_centers/1
  # DELETE /recycling_centers/1.json
  def destroy
    @recycling_center.destroy
    respond_to do |format|
      format.html { redirect_to recycling_centers_url, notice: 'Recycling center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recycling_center
      @recycling_center = RecyclingCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recycling_center_params
      params.require(:recycling_center).permit(:nam_recycling_center, :desc_recycling_center, :address_recycling_center, :tel_recycling_center, :web_recycling_center)
    end
end

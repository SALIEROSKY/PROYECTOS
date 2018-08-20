class TransportMaterialsController < ApplicationController
  before_action :set_transport_material, only: [:show, :edit, :update, :destroy]

  # GET /transport_materials
  # GET /transport_materials.json
  def index
    @transport_materials = TransportMaterial.all
  end

  # GET /transport_materials/1
  # GET /transport_materials/1.json
  def show
  end

  # GET /transport_materials/new
  def new
    @transport_material = TransportMaterial.new
  end

  # GET /transport_materials/1/edit
  def edit
  end

  # POST /transport_materials
  # POST /transport_materials.json
  def create
    @transport_material = TransportMaterial.new(transport_material_params)

    respond_to do |format|
      if @transport_material.save
        format.html { redirect_to @transport_material, notice: 'Transport material was successfully created.' }
        format.json { render :show, status: :created, location: @transport_material }
      else
        format.html { render :new }
        format.json { render json: @transport_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transport_materials/1
  # PATCH/PUT /transport_materials/1.json
  def update
    respond_to do |format|
      if @transport_material.update(transport_material_params)
        format.html { redirect_to @transport_material, notice: 'Transport material was successfully updated.' }
        format.json { render :show, status: :ok, location: @transport_material }
      else
        format.html { render :edit }
        format.json { render json: @transport_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_materials/1
  # DELETE /transport_materials/1.json
  def destroy
    @transport_material.destroy
    respond_to do |format|
      format.html { redirect_to transport_materials_url, notice: 'Transport material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_material
      @transport_material = TransportMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transport_material_params
      params.require(:transport_material).permit(:nam_transport_material, :desc_transport_material, :date_transport_material, :id_material, :id_recycling_center)
    end
end

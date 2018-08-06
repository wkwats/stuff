class SubcoPosController < ApplicationController
  before_action :set_subco_po, only: [:show, :edit, :update, :destroy]

  # GET /subco_pos
  # GET /subco_pos.json
  def index
    @subco_pos = SubcoPo.all
  end

  # GET /subco_pos/1
  # GET /subco_pos/1.json
  def show
  end

  # GET /subco_pos/new
  def new
    @subco_po = SubcoPo.new
  end

  # GET /subco_pos/1/edit
  def edit
  end

  # POST /subco_pos
  # POST /subco_pos.json
  def create
    @subco_po = SubcoPo.new(subco_po_params)

    respond_to do |format|
      if @subco_po.save
        format.html { redirect_to @subco_po, notice: 'Subco po was successfully created.' }
        format.json { render :show, status: :created, location: @subco_po }
      else
        format.html { render :new }
        format.json { render json: @subco_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subco_pos/1
  # PATCH/PUT /subco_pos/1.json
  def update
    respond_to do |format|
      if @subco_po.update(subco_po_params)
        format.html { redirect_to @subco_po, notice: 'Subco po was successfully updated.' }
        format.json { render :show, status: :ok, location: @subco_po }
      else
        format.html { render :edit }
        format.json { render json: @subco_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subco_pos/1
  # DELETE /subco_pos/1.json
  def destroy
    @subco_po.destroy
    respond_to do |format|
      format.html { redirect_to subco_pos_url, notice: 'Subco po was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subco_po
      @subco_po = SubcoPo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subco_po_params
      params.require(:subco_po).permit(:date, :details, :number, :amount, :sd_id)
    end
end

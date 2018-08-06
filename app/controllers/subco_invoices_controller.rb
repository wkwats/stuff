class SubcoInvoicesController < ApplicationController
  before_action :set_subco_invoice, only: [:show, :edit, :update, :destroy]

  # GET /subco_invoices
  # GET /subco_invoices.json
  def index
    @subco_invoices = SubcoInvoice.all
  end

  # GET /subco_invoices/1
  # GET /subco_invoices/1.json
  def show
  end

  # GET /subco_invoices/new
  def new
    @subco_invoice = SubcoInvoice.new
  end

  # GET /subco_invoices/1/edit
  def edit
  end

  # POST /subco_invoices
  # POST /subco_invoices.json
  def create
    @subco_invoice = SubcoInvoice.new(subco_invoice_params)

    respond_to do |format|
      if @subco_invoice.save
        format.html { redirect_to @subco_invoice, notice: 'Subco invoice was successfully created.' }
        format.json { render :show, status: :created, location: @subco_invoice }
      else
        format.html { render :new }
        format.json { render json: @subco_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subco_invoices/1
  # PATCH/PUT /subco_invoices/1.json
  def update
    respond_to do |format|
      if @subco_invoice.update(subco_invoice_params)
        format.html { redirect_to @subco_invoice, notice: 'Subco invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @subco_invoice }
      else
        format.html { render :edit }
        format.json { render json: @subco_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subco_invoices/1
  # DELETE /subco_invoices/1.json
  def destroy
    @subco_invoice.destroy
    respond_to do |format|
      format.html { redirect_to subco_invoices_url, notice: 'Subco invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subco_invoice
      @subco_invoice = SubcoInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subco_invoice_params
      params.require(:subco_invoice).permit(:date, :details, :invoice_num, :amount, :subco_po_id, :milestone, :status, :pv_number, :approval)
    end
end

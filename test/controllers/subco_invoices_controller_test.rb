require 'test_helper'

class SubcoInvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subco_invoice = subco_invoices(:one)
  end

  test "should get index" do
    get subco_invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_subco_invoice_url
    assert_response :success
  end

  test "should create subco_invoice" do
    assert_difference('SubcoInvoice.count') do
      post subco_invoices_url, params: { subco_invoice: { amount: @subco_invoice.amount, approval: @subco_invoice.approval, date: @subco_invoice.date, details: @subco_invoice.details, invoice_num: @subco_invoice.invoice_num, milestone: @subco_invoice.milestone, pv_number: @subco_invoice.pv_number, status: @subco_invoice.status, subco_po_id: @subco_invoice.subco_po_id } }
    end

    assert_redirected_to subco_invoice_url(SubcoInvoice.last)
  end

  test "should show subco_invoice" do
    get subco_invoice_url(@subco_invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_subco_invoice_url(@subco_invoice)
    assert_response :success
  end

  test "should update subco_invoice" do
    patch subco_invoice_url(@subco_invoice), params: { subco_invoice: { amount: @subco_invoice.amount, approval: @subco_invoice.approval, date: @subco_invoice.date, details: @subco_invoice.details, invoice_num: @subco_invoice.invoice_num, milestone: @subco_invoice.milestone, pv_number: @subco_invoice.pv_number, status: @subco_invoice.status, subco_po_id: @subco_invoice.subco_po_id } }
    assert_redirected_to subco_invoice_url(@subco_invoice)
  end

  test "should destroy subco_invoice" do
    assert_difference('SubcoInvoice.count', -1) do
      delete subco_invoice_url(@subco_invoice)
    end

    assert_redirected_to subco_invoices_url
  end
end

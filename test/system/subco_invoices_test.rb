require "application_system_test_case"

class SubcoInvoicesTest < ApplicationSystemTestCase
  setup do
    @subco_invoice = subco_invoices(:one)
  end

  test "visiting the index" do
    visit subco_invoices_url
    assert_selector "h1", text: "Subco Invoices"
  end

  test "creating a Subco invoice" do
    visit subco_invoices_url
    click_on "New Subco Invoice"

    fill_in "Amount", with: @subco_invoice.amount
    fill_in "Approval", with: @subco_invoice.approval
    fill_in "Date", with: @subco_invoice.date
    fill_in "Details", with: @subco_invoice.details
    fill_in "Invoice Num", with: @subco_invoice.invoice_num
    fill_in "Milestone", with: @subco_invoice.milestone
    fill_in "Pv Number", with: @subco_invoice.pv_number
    fill_in "Status", with: @subco_invoice.status
    fill_in "Subco Po", with: @subco_invoice.subco_po_id
    click_on "Create Subco invoice"

    assert_text "Subco invoice was successfully created"
    click_on "Back"
  end

  test "updating a Subco invoice" do
    visit subco_invoices_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @subco_invoice.amount
    fill_in "Approval", with: @subco_invoice.approval
    fill_in "Date", with: @subco_invoice.date
    fill_in "Details", with: @subco_invoice.details
    fill_in "Invoice Num", with: @subco_invoice.invoice_num
    fill_in "Milestone", with: @subco_invoice.milestone
    fill_in "Pv Number", with: @subco_invoice.pv_number
    fill_in "Status", with: @subco_invoice.status
    fill_in "Subco Po", with: @subco_invoice.subco_po_id
    click_on "Update Subco invoice"

    assert_text "Subco invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Subco invoice" do
    visit subco_invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subco invoice was successfully destroyed"
  end
end

require "application_system_test_case"

class SubcoPosTest < ApplicationSystemTestCase
  setup do
    @subco_po = subco_pos(:one)
  end

  test "visiting the index" do
    visit subco_pos_url
    assert_selector "h1", text: "Subco Pos"
  end

  test "creating a Subco po" do
    visit subco_pos_url
    click_on "New Subco Po"

    fill_in "Amount", with: @subco_po.amount
    fill_in "Date", with: @subco_po.date
    fill_in "Details", with: @subco_po.details
    fill_in "Number", with: @subco_po.number
    fill_in "Sd", with: @subco_po.sd_id
    click_on "Create Subco po"

    assert_text "Subco po was successfully created"
    click_on "Back"
  end

  test "updating a Subco po" do
    visit subco_pos_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @subco_po.amount
    fill_in "Date", with: @subco_po.date
    fill_in "Details", with: @subco_po.details
    fill_in "Number", with: @subco_po.number
    fill_in "Sd", with: @subco_po.sd_id
    click_on "Update Subco po"

    assert_text "Subco po was successfully updated"
    click_on "Back"
  end

  test "destroying a Subco po" do
    visit subco_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subco po was successfully destroyed"
  end
end

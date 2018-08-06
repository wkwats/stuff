require 'test_helper'

class SubcoPosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subco_po = subco_pos(:one)
  end

  test "should get index" do
    get subco_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_subco_po_url
    assert_response :success
  end

  test "should create subco_po" do
    assert_difference('SubcoPo.count') do
      post subco_pos_url, params: { subco_po: { amount: @subco_po.amount, date: @subco_po.date, details: @subco_po.details, number: @subco_po.number, sd_id: @subco_po.sd_id } }
    end

    assert_redirected_to subco_po_url(SubcoPo.last)
  end

  test "should show subco_po" do
    get subco_po_url(@subco_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_subco_po_url(@subco_po)
    assert_response :success
  end

  test "should update subco_po" do
    patch subco_po_url(@subco_po), params: { subco_po: { amount: @subco_po.amount, date: @subco_po.date, details: @subco_po.details, number: @subco_po.number, sd_id: @subco_po.sd_id } }
    assert_redirected_to subco_po_url(@subco_po)
  end

  test "should destroy subco_po" do
    assert_difference('SubcoPo.count', -1) do
      delete subco_po_url(@subco_po)
    end

    assert_redirected_to subco_pos_url
  end
end

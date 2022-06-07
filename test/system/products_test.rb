require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "A1", with: @product.a1
    fill_in "A2", with: @product.a2
    fill_in "A3", with: @product.a3
    fill_in "A4", with: @product.a4
    fill_in "Quetion", with: @product.quetion
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "A1", with: @product.a1
    fill_in "A2", with: @product.a2
    fill_in "A3", with: @product.a3
    fill_in "A4", with: @product.a4
    fill_in "Quetion", with: @product.quetion
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end

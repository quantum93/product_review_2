require 'rails_helper'

describe "product paths" do
  before :each do
    Product.destroy_all
  end

  describe "add new product" do
    it "creates a new product" do
      visit products_path
      click_link "Create new product"
      fill_in "Name", with: "pancake"
      fill_in "Cost", with: "2"
      fill_in "Country of origin", with: "United States"
      click_on "Create Product"
      expect(page).to have_content "pancake"
    end
  end
end

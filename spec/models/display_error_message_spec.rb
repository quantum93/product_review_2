require 'rails_helper'

describe "product paths" do
  before :each do
    Product.destroy_all
  end

  describe "displays error message" do
    it "displays an error message if an input is missing" do
      visit products_path
      click_link "Create new product"
      click_on 'Create Product'
      expect(page).to have_content "User must exist"
      expect(page).to have_content "Name can't be blank"
      expect(page).to have_content "Cost can't be blank"
      expect(page).to have_content "Country of origin can't be blank"
    end
  end
end

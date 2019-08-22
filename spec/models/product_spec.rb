require 'rails_helper'

describe Product do
  before :each do
    Product.destroy_all
  end
  # it { should belong_to(:user) }
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }

  # All products are automatically titleized (first letter of each word capitalized) before they are saved to the database.
  it("titleizes the name of a product") do
    product = FactoryBot.create(:product, name: "gala apples")
    expect(product.name).to eq "Gala Apples"
  end
end

# describe Product do
#   it("titleizes the name of an product") do
#     product = Product.create({name: "bibimbop", cost: 5, country_of_origin: "Republic of Korea"})
#     expect(product.name()).to(eq("Bibimbop"))
#     expect(product.cost()).to(eq(5))
#     expect(product.country_of_origin()).to(eq("Republic of Korea"))
#   end
# end

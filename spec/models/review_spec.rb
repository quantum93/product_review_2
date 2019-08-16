require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :product_id }
  it { should validate_inclusion_of(:rating).in_range(1..5) }

  it("has a product_id, author, content_body, and rating") do
    product = FactoryBot.create(:product)
    author = "Tae Lee"
    content_body = "La ~~~ La ~~~ La ~~~"
    rating = 3
    review = FactoryBot.create(:review, product_id: product.id, author: author, content_body: content_body, rating: rating)
    expect(review.author).to eq author
    expect(review.rating).to eq rating
    expect(review.product_id).to eq product.id
    expect(review.content_body).to eq content_body
  end
end

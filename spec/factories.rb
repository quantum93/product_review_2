FactoryBot.define do
  factory :product do
    name { "Apples" }
    cost  { 2 }
    country_of_origin { "United States"}
  end

  factory :review do
    product_id { 1 }
    author  { "Tae Lee" }
    content_body { "La ~~~ La ~~~ La ~~~"}
    rating { 3 }
  end
end

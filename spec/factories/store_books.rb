FactoryBot.define do
  factory :store_book do
    store { nil }
    book { nil }
    book_price { 1 }
    quantity { 1 }
  end
end

class Book < ApplicationRecord
    has_many :store_books
    has_many :stores, through: :store_books
    def summary_length 
        self.summary.length
    end 
end

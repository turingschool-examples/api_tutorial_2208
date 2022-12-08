class StoreSerializer
    include JSONAPI::Serializer
    attributes :name
  
    has_many :books 
    attribute :num_books do |object|
      object.books.count
    end
  
    attribute :active do
      true
    end

    def self.handrolled_method()
    end 
  end
class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :genre
end

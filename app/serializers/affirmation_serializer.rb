class AffirmationSerializer
  include JSONAPI::Serializer
  attributes :description, :category
end

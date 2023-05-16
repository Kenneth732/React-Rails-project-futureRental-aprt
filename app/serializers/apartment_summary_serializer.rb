class ApartmentSummarySerializer < ActiveModel::Serializer
  attributes :summary
  "#{self.object.category} - #{self.object.price}"
end

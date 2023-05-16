class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :image, :price, :rate, :category, 

  def summary
    "#{self.object.category} - #{self.object.price}"
  end
end

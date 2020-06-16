class QuestSerializer < ActiveModel::Serializer
  attributes :id, :content, :location_id, :location
  
  def location
    self.object.location.name
  end
  
end
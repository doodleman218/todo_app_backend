class QuestSerializer < ActiveModel::Serializer
  attributes :id, :content, :location_id
  
end

# def location
#   self.object.location.name
# end
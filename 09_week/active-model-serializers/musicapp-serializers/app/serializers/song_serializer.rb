class SongSerializer < ActiveModel::Serializer
  attributes :track, :name, :running_time
end

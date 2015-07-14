class AlbumSerializer < ActiveModel::Serializer
  attributes :name,:band, :year_released, :num_songs, :running_time, :genre

  # has_one :band
  has_many :songs
  # has_one :genre

  def band
  	object.band.name
  end

  def genre
  	object.genre.name
  end

  def num_songs
  	object.songs.count
  end
end

class YearTitleSerializer < ActiveModel::Serializer
  attributes :title, :artist

  def artist
    YearArtistSerializer.new(object.artist).attributes
  end
end

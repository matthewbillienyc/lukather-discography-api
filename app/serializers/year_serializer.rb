class YearSerializer < ActiveModel::Serializer
  attributes :year, :albums

  def albums
    object.titles.map do |title|
      {
        title: title.title,
        artist: musician_name(title.artist_id)
      }
    end
  end

  private
  
  def musicians
    object.artists
  end

  def musician_name(id)
    musicians.find { |m| m.id == id }.name
  end
end

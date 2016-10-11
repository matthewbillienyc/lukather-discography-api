class YearSerializer < ActiveModel::Serializer
  attributes :year, :titles

  def titles
    Title.where(year: year).map do |title|
      YearTitleSerializer.new(title).attributes
    end
  end
end

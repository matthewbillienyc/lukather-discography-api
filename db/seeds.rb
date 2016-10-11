# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'

(1977..2016).each do |y|
  html = Nokogiri::HTML(open("http://www.stevelukather.com/music/discography/#{y}.aspx"))
  albums = html.css('.discography-title').map { |album| album.inner_text.gsub("\t", "").gsub("\n", "") }
  artists = html.css('.discography-artist').map { |artist| artist.inner_text }
  year = Year.find_or_create_by({year: y})
  albums.each_with_index do |album, i|
    artist = Artist.find_or_create_by({name: artists[i]})
    title = Title.create({title: album, year: year, artist: artist})
  end
end

puts "Done"

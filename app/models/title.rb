class Title < ActiveRecord::Base
  belongs_to :artist
  belongs_to :year
end

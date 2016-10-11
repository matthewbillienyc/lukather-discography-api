class Year < ActiveRecord::Base
  has_many :titles
  has_many :artists, through: :titles
end

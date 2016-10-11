class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.string :title
      t.belongs_to :year
      t.belongs_to :artist
    end
  end
end

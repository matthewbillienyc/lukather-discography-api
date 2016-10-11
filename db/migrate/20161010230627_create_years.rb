class CreateYears < ActiveRecord::Migration[5.0]
  def change
    create_table :years, id: false  do |t|
      t.primary_key :year
    end
  end
end

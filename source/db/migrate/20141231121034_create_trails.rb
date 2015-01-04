class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string  :name
      t.string  :description
      t.string  :location
      t.integer :distance
      t.string  :skill_level
    end
  end
end

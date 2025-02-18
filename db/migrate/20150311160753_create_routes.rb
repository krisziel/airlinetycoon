class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.integer :distance
      t.json :minfare
      t.json :maxfare
      t.json :price
      t.json :demand
      t.json :elasticity
      t.timestamps
    end
  end
end

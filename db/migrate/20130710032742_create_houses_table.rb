class CreateHousesTable < ActiveRecord::Migration
  def up
    create_table :houses do |t|
      t.string :name
    end
  end

  def down
    drop_table :house
  end
end

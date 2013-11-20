class CreateHousesTable < ActiveRecord::Migration
  def up
    create_table :houses do |t|
      t.string :house_name
    end
  end

  def down
  end
end

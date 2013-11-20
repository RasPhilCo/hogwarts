class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.references :house

      t.timestamps
    end
  end

  def down
  end
end

class CreateSpottings < ActiveRecord::Migration
  def change
    create_table :spottings do |t|
      t.string :bird_name
      t.string :location
      t.string :spotted_by

      t.timestamps
    end
  end
end

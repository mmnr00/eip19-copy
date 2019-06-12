class CreateProges < ActiveRecord::Migration[5.2]
  def change
    create_table :proges do |t|
      t.string :name
      t.date :date
      t.string :venue
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end

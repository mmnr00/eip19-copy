class CreateSces < ActiveRecord::Migration[5.2]
  def change
    create_table :sces do |t|
      t.string :name
      t.datetime :date
      t.string :venue
      t.string :loc

      t.timestamps
    end
  end
end

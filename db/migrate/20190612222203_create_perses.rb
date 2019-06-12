class CreatePerses < ActiveRecord::Migration[5.2]
  def change
    create_table :perses do |t|
      t.string :name
      t.string :ic
      t.string :ph
      t.string :inc
      t.string :gdr
      t.string :dun
      t.string :dob

      t.timestamps
    end
  end
end

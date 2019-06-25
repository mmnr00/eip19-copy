class CreatePkids < ActiveRecord::Migration[5.2]
  def change
    create_table :pkids do |t|
      t.text :devkid

      t.timestamps
    end
  end
end

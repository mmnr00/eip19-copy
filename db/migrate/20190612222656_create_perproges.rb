class CreatePerproges < ActiveRecord::Migration[5.2]
  def change
    create_table :perproges do |t|
      t.integer :perse_id
      t.integer :proge_id
      t.string :stat

      t.timestamps
    end
  end
end

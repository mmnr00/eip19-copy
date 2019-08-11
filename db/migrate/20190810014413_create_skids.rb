class CreateSkids < ActiveRecord::Migration[5.2]
  def change
    create_table :skids do |t|
      t.string :dely
      t.string :delydesc

      t.timestamps
    end
  end
end

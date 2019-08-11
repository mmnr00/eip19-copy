class AddEkidToSkids < ActiveRecord::Migration[5.2]
  def change
    add_column :skids, :ekid_id, :integer
  end
end

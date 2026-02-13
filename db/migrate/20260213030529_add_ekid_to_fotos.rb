class AddEkidToFotos < ActiveRecord::Migration[8.1]
  def change
    add_column :fotos, :ekid_id, :integer
  end
end

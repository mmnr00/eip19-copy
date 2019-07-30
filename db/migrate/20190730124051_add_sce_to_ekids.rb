class AddSceToEkids < ActiveRecord::Migration[5.2]
  def change
    add_column :ekids, :sce_id, :integer
  end
end

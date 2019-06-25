class AddNewToPkids < ActiveRecord::Migration[5.2]
  def change
    add_column :pkids, :addfo, :text
    add_column :pkids, :health, :text
    add_column :pkids, :birth, :text
    add_column :pkids, :grow, :text
    add_column :pkids, :physpch, :text
    add_column :pkids, :agr, :text
    add_column :pkids, :ekid_id, :integer
  end
end

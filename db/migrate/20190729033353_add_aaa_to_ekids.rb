class AddAaaToEkids < ActiveRecord::Migration[5.2]
  def change
    add_column :ekids, :stat, :string
    add_column :ekids, :prefloc, :string
    add_column :ekids, :admloc, :string
  end
end

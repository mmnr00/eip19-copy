class AddNewToSkids < ActiveRecord::Migration[5.2]
  def change
    add_column :skids, :phy, :string
    add_column :skids, :cog, :string
    add_column :skids, :comm, :string
    add_column :skids, :soc, :string
    add_column :skids, :adap, :string
    add_column :skids, :reflt, :string
    add_column :skids, :otnt, :string
  end
end

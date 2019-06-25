class AddSibToEkids < ActiveRecord::Migration[5.2]
  def change
    add_column :ekids, :sib, :string
    add_column :ekids, :prbot, :string
  end
end

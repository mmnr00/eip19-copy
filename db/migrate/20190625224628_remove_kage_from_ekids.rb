class RemoveKageFromEkids < ActiveRecord::Migration[5.2]
  def change
    remove_column :ekids, :kage, :string
  end
end

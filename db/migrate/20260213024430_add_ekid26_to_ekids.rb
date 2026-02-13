class AddEkid26ToEkids < ActiveRecord::Migration[8.1]
  def change
    add_column :ekids, :fic, :string
    add_column :ekids, :fdun, :string
    add_column :ekids, :mic, :string
    add_column :ekids, :mdun, :string
  end
end

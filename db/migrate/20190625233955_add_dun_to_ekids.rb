class AddDunToEkids < ActiveRecord::Migration[5.2]
  def change
    add_column :ekids, :dun, :string
  end
end

class AddMphToEkids < ActiveRecord::Migration[5.2]
  def change
    add_column :ekids, :mmph, :string
  end
end

class AddAdmcmtToEkids < ActiveRecord::Migration[8.1]
  def change
    add_column :ekids, :admcmt, :string
  end
end

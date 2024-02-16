class AddNw24ToEkids < ActiveRecord::Migration[6.1]
  def change
    add_column :ekids, :reflw, :string
    add_column :ekids, :prbotmed, :string
    add_column :ekids, :prbpreg, :string
    add_column :ekids, :infot, :string
    add_column :ekids, :agr, :text
  end
end

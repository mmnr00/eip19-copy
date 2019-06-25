class CreateEkids < ActiveRecord::Migration[5.2]
  def change
    create_table :ekids do |t|
      t.string :name
      t.string :ic
      t.string :gdr
      t.date :dob
      t.string :addr
      t.string :mph
      t.string :fname
      t.string :fage
      t.string :fph
      t.string :femail
      t.string :fedu
      t.string :fwork
      t.string :fworktp
      t.string :mname
      t.string :mage
      t.string :mph
      t.string :memail
      t.string :medu
      t.string :mwork
      t.string :mworktp
      t.string :phist
      t.string :phisttp
      t.string :pinc
      t.string :ref
      t.string :refloc
      t.string :prbtp
      t.string :kage

      t.timestamps
    end
  end
end

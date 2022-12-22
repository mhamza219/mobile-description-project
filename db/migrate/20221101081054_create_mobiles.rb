class CreateMobiles < ActiveRecord::Migration[6.1]
  def change
    create_table :mobiles do |t|
      t.string :brand
      t.string :series

      t.timestamps
    end
  end
end

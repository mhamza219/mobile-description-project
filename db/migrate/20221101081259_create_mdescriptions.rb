class CreateMdescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :mdescriptions do |t|
      t.string :specification
      t.integer :price
      t.references :mobile, null: false, foreign_key: true

      t.timestamps
    end
  end
end

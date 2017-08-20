class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :profession

      t.timestamps
    end
  end
end

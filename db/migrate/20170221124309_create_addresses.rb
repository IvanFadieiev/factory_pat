class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :address
      t.string :zipcode
      t.string :city
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :profiles, :users
  end
end

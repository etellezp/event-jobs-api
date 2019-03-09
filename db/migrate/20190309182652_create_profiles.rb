class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :image_url
      t.text :about
      t.integer :rate
      t.string :location
      t.string :name
      t.string :skill

      t.timestamps
    end
  end
end

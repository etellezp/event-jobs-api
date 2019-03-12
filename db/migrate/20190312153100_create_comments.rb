class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :review
      t.integer :rating
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :image_url
      t.references :mall, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.references :store, null: false, foreign_key: true
      t.boolean :isRenewable

      t.timestamps
    end
  end
end

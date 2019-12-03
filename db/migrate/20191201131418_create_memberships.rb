class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.string :store
      t.boolean :isRenewable

      t.timestamps
    end
  end
end

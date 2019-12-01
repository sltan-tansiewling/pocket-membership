class CreateMembershipsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :membership, null: false, foreign_key: true

      t.timestamps
    end
  end
end

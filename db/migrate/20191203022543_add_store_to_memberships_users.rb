class AddStoreToMembershipsUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships_users, :store, :string
  end
end

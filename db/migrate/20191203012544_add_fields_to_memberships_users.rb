class AddFieldsToMembershipsUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships_users, :status, :string
    add_column :memberships_users, :points, :integer
    add_column :memberships_users, :rewards, :string
  end
end

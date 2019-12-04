class AddImageToMembershipsUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships_users, :image, :string
  end
end

class AddImageBackToMembershipsUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships_users, :image_back, :string
  end
end

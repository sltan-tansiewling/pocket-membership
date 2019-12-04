class DeleteIsRenewableFromMemberships < ActiveRecord::Migration[6.0]
  def change
    remove_column :memberships, :isRenewable
  end
end

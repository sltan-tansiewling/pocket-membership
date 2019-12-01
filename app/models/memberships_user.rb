class MembershipsUser < ApplicationRecord
  belongs_to :user
  belongs_to :membership
end

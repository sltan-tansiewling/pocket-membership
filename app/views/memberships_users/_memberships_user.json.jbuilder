json.extract! memberships_user, :id, :user_id, :membership_id, :created_at, :updated_at
json.url memberships_user_url(memberships_user, format: :json)

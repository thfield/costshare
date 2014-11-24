json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :validated
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :name, :mailing_address, :gender, :date_of_birth, :relationship_id, :bio
  json.url user_url(user, format: :json)
end

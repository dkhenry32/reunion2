json.array!(@users) do |user|
  json.extract! user, :id, :Name, :Mailing_Address, :Gender, :Date_of_Birth, :Relationship_id, :bio
  json.url user_url(user, format: :json)
end

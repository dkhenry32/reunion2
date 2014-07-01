json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :user_id, :relationship_type, :relative_user_id
  json.url relationship_url(relationship, format: :json)
end

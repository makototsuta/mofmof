json.extract! user, :id, :property, :rent, :address, :year, :note, :created_at, :updated_at
json.url user_url(user, format: :json)

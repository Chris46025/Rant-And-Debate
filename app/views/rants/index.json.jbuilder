json.array!(@rants) do |rant|
  json.extract! rant, :id, :name, :body
  json.url rant_url(rant, format: :json)
end

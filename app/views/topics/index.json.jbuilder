json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :body
  json.url topic_url(topic, format: :json)
end

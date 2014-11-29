json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :rant, :debate
  json.url topic_url(topic, format: :json)
end

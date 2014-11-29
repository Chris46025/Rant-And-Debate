json.array!(@debates) do |debate|
  json.extract! debate, :id, :name, :body
  json.url debate_url(debate, format: :json)
end

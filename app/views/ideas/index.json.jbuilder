json.array!(@ideas) do |idea|
  json.extract! idea, :user_id, :title, :body
  json.url idea_url(idea, format: :json)
end

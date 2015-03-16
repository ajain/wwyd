json.array!(@whies) do |why|
  json.extract! why, :id, :title, :content
  json.url why_url(why, format: :json)
end

json.array!(@jokes) do |joke|
  json.extract! joke, :title, :content, :time, :category
  json.url joke_url(joke, format: :json)
end
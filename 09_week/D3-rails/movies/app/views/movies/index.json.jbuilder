json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :rating
  json.url movie_url(movie, format: :json)
end

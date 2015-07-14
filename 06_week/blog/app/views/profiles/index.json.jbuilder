json.array!(@profiles) do |profile|
  json.extract! profile, :id, :full_name, :bio
  json.url profile_url(profile, format: :json)
end

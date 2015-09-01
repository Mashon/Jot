json.array!(@jots) do |jot|
  json.extract! jot, :id
  json.url jot_url(jot, format: :json)
end

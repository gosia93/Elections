json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :number, :name, :town, :seats, :electors
  json.url constituency_url(constituency, format: :json)
end

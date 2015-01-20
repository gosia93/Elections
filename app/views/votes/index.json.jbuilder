json.array!(@votes) do |vote|
  json.extract! vote, :id, :committee, :constituency, :amount
  json.url vote_url(vote, format: :json)
end

json.array!(@results) do |result|
  json.extract! result, :id, :committee_id, :constituency_id, :amount
  json.url result_url(result, format: :json)
end

json.array!(@thofins) do |thofin|
  json.extract! thofin, :id, :name, :description
  json.url thofin_url(thofin, format: :json)
end

json.array!(@families) do |family|
  json.extract! family, :id, :family_name
  json.url family_url(family, format: :json)
end

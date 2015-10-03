json.array!(@companies) do |company|
  json.extract! company, :id, :name, :score, :rut, :category
  json.url company_url(company, format: :json)
end

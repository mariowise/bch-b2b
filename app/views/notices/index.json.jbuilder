json.array!(@notices) do |notice|
  json.extract! notice, :id, :actions, :price
  json.url notice_url(notice, format: :json)
end

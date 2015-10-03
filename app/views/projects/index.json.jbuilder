json.array!(@projects) do |project|
  json.extract! project, :id, :name, :type, :goal, :current_money
  json.url project_url(project, format: :json)
end

json.array!(@tool_types) do |tool_type|
  json.extract! tool_type, :id, :name, :description
  json.url tool_type_url(tool_type, format: :json)
end

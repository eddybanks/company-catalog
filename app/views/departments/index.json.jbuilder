json.array!(@departments) do |department|
  json.extract! department, :id, :name, :location, :number, :description
  json.url department_url(department, format: :json)
end

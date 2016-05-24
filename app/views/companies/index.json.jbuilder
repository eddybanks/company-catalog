json.array!(@companies) do |company|
  json.extract! company, :id, :name, :start_date, :industry, :directors, :registered, :address, :email
  json.url company_url(company, format: :json)
end

json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :email, :nationality, :address, :gender, :birth_date, :phone_number, :manager_flag, :start_date, :end_date, :department_id
  json.url employee_url(employee, format: :json)
end

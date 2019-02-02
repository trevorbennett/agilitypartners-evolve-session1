json.extract! company, :id, :name, :employee_count, :created_at, :updated_at
json.url company_url(company, format: :json)

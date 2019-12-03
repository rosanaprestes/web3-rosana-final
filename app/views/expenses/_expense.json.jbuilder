json.extract! expense, :id, :expense, :value, :due_date, :pay_day, :status, :created_at, :updated_at
json.url expense_url(expense, format: :json)

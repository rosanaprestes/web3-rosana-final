json.extract! bank_account, :id, :name, :account_number, :client, :date, :balance, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)

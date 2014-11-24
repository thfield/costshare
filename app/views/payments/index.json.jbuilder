json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :description
  json.url payment_url(payment, format: :json)
end

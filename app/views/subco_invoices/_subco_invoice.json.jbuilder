json.extract! subco_invoice, :id, :date, :details, :invoice_num, :amount, :subco_po_id, :milestone, :status, :pv_number, :approval, :created_at, :updated_at
json.url subco_invoice_url(subco_invoice, format: :json)

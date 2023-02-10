json.extract! question, :id, :text, :category, :created_at, :updated_at
json.url question_url(question, format: :json)

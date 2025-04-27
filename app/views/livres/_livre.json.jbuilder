json.extract! livre, :id, :titre, :auteur, :resume, :date, :created_at, :updated_at
json.url livre_url(livre, format: :json)

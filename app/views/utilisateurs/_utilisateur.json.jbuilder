json.extract! utilisateur, :id, :nom, :email, :created_at, :updated_at
json.url utilisateur_url(utilisateur, format: :json)
json.extract! get_commit, :id, :created_at, :updated_at
json.url get_commit_url(get_commit, format: :json)

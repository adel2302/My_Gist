json.array!(@gists) do |gist|
  json.extract! gist, :id, :title, :content, :user_id
  json.url gist_url(gist, format: :json)
end

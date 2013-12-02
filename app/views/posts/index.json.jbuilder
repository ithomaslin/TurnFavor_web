json.array!(@posts) do |post|
  json.extract! post, :title, :user_id, :description, :price
  json.url post_url(post, format: :json)
end

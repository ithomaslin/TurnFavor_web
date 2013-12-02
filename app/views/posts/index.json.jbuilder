json.array!(@posts) do |post|
  json.extract! post, :title, :user_id, :description, :price, :image_url
  json.url post_url(post, format: :json)
end

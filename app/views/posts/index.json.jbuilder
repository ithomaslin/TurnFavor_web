json.array!(@posts) do |post|
  json.extract! post, :title, :user_id, :user_name, :description, :price, :image_url
  json.url post_url(post, format: :json)
end

json.array! @posts do |post|
  json.id post.id
  json.content post.content
  json.created_at post.created_at
  
  json.user do
    json.id post.user.id
    json.nickname post.user.nickname
    json.avatar post.user.avatar
  end 

  json.thread post.responses do |response|
    json.id response.id
    json.content response.content
    json.created_at response.created_at

    json.user do
      json.id response.user.id
      json.nickname response.user.nickname
      json.avatar response.user.avatar
    end 
  end
end
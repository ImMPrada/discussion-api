json.id post.id
json.content post.content
json.created_at post.created_at
json.receiver_id post.receiver_id
json.reactions_score post.reactions_score

json.user do
  json.id post.user.id
  json.nickname post.user.nickname
  json.avatar post.user.avatar
end 

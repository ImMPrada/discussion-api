json.id post.id
json.content post.content
json.created_at post.created_at
json.receiver_id post.receiver_id
json.reactions_score post.reactions_score
json.useres_reacted_ids post.users_reacted_ids

if post.user.present?
  json.user do
    json.id post.user.id
    json.nickname post.user.nickname
    json.avatar post.user.avatar
  end 
else
  json.user do
    json.id nil
    json.nickname User::UNKNOWN_USER_NICKNAME
    json.avatar User::UNKNOWN_USER_AVATAR
  end
end
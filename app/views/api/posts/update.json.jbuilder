json.( 
  json.partial! 'post', post: @post 
)

json.thread @post.responses do |response|
  json.partial! 'post', post: response 
end
  
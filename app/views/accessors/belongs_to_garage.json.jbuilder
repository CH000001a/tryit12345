json.array!(@accessors) do |accessor|
  json.extract! accessor, :id, :friend_id, :code
end

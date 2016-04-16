json.array!(@imageprofiles) do |imageprofile|
  json.extract! imageprofile, :id, :user_id
  json.url imageprofile_url(imageprofile, format: :json)
end

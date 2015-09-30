json.array!(@prayerrequests) do |prayerrequest|
  json.extract! prayerrequest, :id, :title, :description
  json.url prayerrequest_url(prayerrequest, format: :json)
end

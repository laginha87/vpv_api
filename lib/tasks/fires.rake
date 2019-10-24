namespace :fires do
  task fetch: :environment do
    response = HTTParty.get("https://api-lb.fogos.pt/new/fires")
    Fire.destroy_all
    json = JSON.parse(response.body)

    fires = json["data"].map { |e| {latitude: e["lat"], longitude: e["lng"]} }
    fires.each { |e| Fire.create(e) }
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

supplies = Supply.create([
  {
    name: "Refeições quentes",
    icon: "meal",
    description: "Depois de várias horas de combate em frente activa os bombeiros em descanso precisam de uma refeição quente. Uma refeição quente deve ter um baixo teor de sal (substitua por especiarias). Deve incluir: - Uma porção de leguminosas (min. 200g) - Uma proteína animal (min. 200g)",
  },
  {
    name: "Garrafas de água (1.5L)",
    icon: "bottle",
    description: "Muitas vezes há falta de água disponível para bombeiros voluntários, e muitos chegam a níveis perigosos de desidratação. Qualquer tipo de garrafa de àgua serve, idealmente garrafas de 1,5 litros. Quanto mais fresca estiver, melhor.",
  },
])

corporations = Corporation.create([{
  name: "Corporação de Vilar", latitude: "39.175115", longitude: "-9.29217",
}, {
  name: "Corporação de Ferreira", latitude: "37.175115", longitude: "-8.29217",
},])

corporations.each do |c|
  campaign = Campaign.create({
    corporation_id: c.id,
    end_datetime: (rand * 20).days.from_now,
    completion: 0,
  })

  CampaignSupply.create(
    supplies.map { |e|
      {supply: e,
       campaign: campaign,
       quantity_needed: (rand * 50 + 10).to_i,
       quantity_supplied: (rand * 10).to_i,}
    }
  )
end


User.create(name: 'Filipe')
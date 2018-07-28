# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying classes"

C = [Need, Feature, User]
C.each do |c|
  c.destroy_all
end

puts "creating classes"


pierre = User.new(name: "Pierre", position: "product", email: "pierre@gmail.com", password: "123456")
pierre.save!

matthieu = User.new(name: "Matthieu", position: "product", email: "matthieu@gmail.com", password: "123456")
matthieu.save! 

jean = User.new(name: "Jean", position: "marketing", email: "jean@gmail.com", password: "123456")
jean.save! 

laura = User.new(name: "Laura", position: "product", email: "laura@gmail.com", password: "123456")
laura.save! 

ines = User.new(name: "Ines", position: "finance", email: "ines@gmail.com", password: "123456")
ines.save! 


navbar = Feature.new(name: "navbar", description: "Refaire l'UI et l'UX de la navbar. Les boutons sont trop espacés, difficulté à trouver le log out, les paramètres", delivery: "Mai 2019", user: pierre )
navbar.save!

user_deletion = Feature.new(name: "pouvoir supprimer un user", description: "Possibilité de pouvoir supprimer un User à partir du Back-Office si celui-ci quite son entreprise", delivery: "Décembre 2018", user: matthieu )
user_deletion.save!

mobile_app = Feature.new(name: "sortir une nouvelle version de l'appli mobile", description: "Dysfonctionnements, cette fois on voudrait de nouvelles fonctionnalités telles que l'appairage par le driver par exemple", delivery: "Juin 2019", user: laura )
mobile_app.save!


need1_navbar = Need.new(description: "Besoin de voir plus les logos", user: ines, feature: navbar) 
need1_navbar.save! 

need2_navbar = Need.new(description: "Mettre le fond en plus sombre", user: jean, feature: navbar) 
need2_navbar.save!

need3_navbar = Need.new(description: "Augmenter la hauteur, qui est trop petite pour l'instant", user: ines, feature: navbar) 
need3_navbar.save! 

need1_user_deletion = Need.new(description: "pourrait entrainer des problèmes de divulgation de data", user: jean, feature: user_deletion) 
need1_user_deletion.save!

need2_user_deletion = Need.new(description: "Si un user est créé par erreur on doit pouvoir le supprimer", user: ines, feature: user_deletion) 
need2_user_deletion.save!

need3_user_deletion = Need.new(description: "Eviter d'avoir un back-office avec des A SUPPRIMER à côté de certains noms", user: jean, feature: user_deletion) 
need3_user_deletion.save!

need1_mobile_app = Need.new(description: "Besoin de pouvoir appairer via le mobile, demandé par client Dupont", user: ines, feature: mobile_app) 
need1_mobile_app.save! 

need2_mobile_app = Need.new(description: "Les utilisateurs ont du mal à savoir comment se déconnecter de l'app, chemin trop complexe", user: jean, feature: mobile_app) 
need2_mobile_app.save!

need3_mobile_app = Need.new(description: "Besoin de pouvoir personnaliser l'app, aux besoins des clients", user: ines, feature: mobile_app) 
need3_mobile_app.save!


















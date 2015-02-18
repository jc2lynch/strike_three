# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Team.destroy_all

Team.create(name:"Arizona Cardinals")
Team.create(name:"Atlanta Falcons")
Team.create(name:"Baltimore Ravens")
Team.create(name:"Buffalo Bills")
Team.create(name:"Carolina Panthers")
Team.create(name:"Chicago Bears")
Team.create(name:"Cincinaati Bengals")
Team.create(name:"Cleveland Browns")
Team.create(name:"Dallas Cowboys")
Team.create(name:"Denver Broncos")
Team.create(name:"Detroit Lions")
Team.create(name:"Green Bay Packers")
Team.create(name:"Houston Texans")
Team.create(name:"Indianapolis Colts")
Team.create(name:"Jacksonville Jaguars")
Team.create(name:"Kansas City Chiefs")
Team.create(name:"Miami Dolphins")
Team.create(name:"Minnesota Vikings")
Team.create(name:"New England Patriots")
Team.create(name:"New Orleans Saints")
Team.create(name:"New York Giants")
Team.create(name:"New York Jets")
Team.create(name:"Oakland Raiders")
Team.create(name:"Philadelphia Eagles")
Team.create(name:"Pittsburgh Steelers")
Team.create(name:"San Diego Chargers")
Team.create(name:"San Francisco 49ers")
Team.create(name:"Seattle Seahawks")
Team.create(name:"St. Louis Rams")
Team.create(name:"Tampa Bay Buccaneers")
Team.create(name:"Tennessee Titans")
Team.create(name:"Washington Redskins")

League.destroy_all
League.create(name:"Lynch Family League")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TEAMS = { 'National League' => { 'East' => ['Atlanta', 'Florida', 'Montreal',
                                            'New York', 'Philadelphia'],
                                 'West' => ['Arizona', 'Colorado', 'Los Angeles',
                                           'San Diego', 'San Francisco'],
                                 'Central' => ['Chicago', 'Cincinatti', 'Houston',
                                           'Milwaukee', 'Pittsburgh', 'St. Louis']
                               },
          'American League' => { 'East' => ['Baltimore', 'Boston', 'New York',
                                            'Tampa Bay', 'Toronto'], 
                                 'West' => ['Anaheim', 'Oakland', 'Seattle', 'Texas'],
                                 'Central' => ['Chicago', 'Kansas City', 'Detroit',
                                           'Cleveland', 'Minnesota'] 
                               }
        }
LEAGUE = ['National League', 'American League']
PARTS = ['East', 'West', 'Central']

100.times do
  p = Player.new(league_name: LEAGUE.sample, division_name: PARTS.sample)
  p.team_city = p.team_name = TEAMS[p.league_name][p.division_name].sample
  p.given_name = Faker::Name.first_name
  p.sur_name = Faker::Name.last_name
  p.home_runs = (50..150).to_a.sample
  p.walks = p.rbi = p.hit_by_pitch = (10..100).to_a.sample
  p.runs = (50..200).to_a.sample
  p.at_bats = (70..600).to_a.sample
  p.hits = (40..500).to_a.sample
  p.steals = p.singles = p.doubles = p.triples = p.sacrifice_flies = (1..20).to_a.sample
  p.save
end

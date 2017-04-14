states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'Califorina' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Franscisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

puts '-' * 10
states.each do |abbrev, city|
  puts "#{abbrev} has the city: #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"

# Italian Regions and Capoluoghi
capoluoghi = {
  "Aosta"=> "AO",
  "Torino"=> "TO",
  "Genova"=> "GE",
  "Milano"=> "MI",
  "Trento"=> "TN",
  "Venezia"=> "VE",
  "Trieste"=> "TS",
  "Bologna"=> "BO",
  "Firenze"=> "FI",
  "Perugia"=> "PG",
  "Ancona"=> "AN",
  "Roma"=> "RM",
  "L'Aquila"=> "AQ",
  "Campobasso"=> "CB",
  "Napoli"=> "NA",
  "Bari"=> "BA",
  "Potenza"=> "PZ",
  "Catanzaro"=> "CZ",
  "Palermo"=> "PA",
  "Cagliari"=> "CA"
}

regioni = {
  "AO"=> "Valle d'Aosta",
  "TO"=> "Piemonte",
  "GE"=> "Liguria",
  "MI"=> "Lombardia",
  "TN"=> "Trentino Alto Adige",
  "VE"=> "Veneto",
  "TS"=> "Friuli Venezia Giulia",
  "BO"=> "Emilia Romagna",
  "FI"=> "Toscana",
  "PG"=> "Umbria",
  "AN"=> "Marche",
  "RM"=> "Lazio",
  "AQ"=> "Abruzzo",
  "CB"=> "Molise",
  "NA"=> "Campania",
  "BA"=> "Puglia",
  "PZ"=> "Basilicata",
  "CZ"=> "Calabria",
  "PA"=> "Sicilia",
  "CA"=> "Cagliari"
}

capoluoghi.each do |citta, sigla|
    puts "La regione #{regioni[capoluoghi[citta]]} ha come capoluogo #{citta}, #{sigla}"
end

# find regions which names are more then one word
long = []
regioni.each_value do |x|
  if x.include? " "
    long.push(x)
  end
end
puts "This regions have especially long names:"
long.each { |x| puts x }

#design nested data structure of bicycles:
bicycles = {
    colnago: {
        country_manufactured: 'Italy',
        frame_types: [
            'steel',
            'aluminum',
            'titanium',
            'carbon'
        ],
        price_range: {
            high: 3500, 
            low: 2200
        }
    },
    trek: {
        country_manufactured: 'USA',
        frame_types: [
            'steel',
            'titanium',
            'carbon'
        ],
        price_range: {
            high: 2500, 
            low: 1800
        }
    },
    fisher: {
        country_manufactured: 'USA',
        frame_types: [
            'aluminum',
            'titanium',
            'carbon'
        ],
        price_range: {
            high: 2100, 
            low: 1200
        }
    },
    raleigh: {
        country_manufactured: 'USA',
        frame_types: [
            'aluminum',
            'steel'
        ],
        price_range: {
            high: 800, 
            low: 200
        }
    },
}

puts bicycles[:trek]
puts bicycles[:fisher][:frame_types].push('steel')
p bicycles[:raleigh][:price_range][:high]
puts bicycles[:colnago][:frame_types][2]= 'Titanium'
p bicycles[:raleigh][:country_manufactured]
puts bicycles.each{|key, value| puts "#{key}: #{value}"}

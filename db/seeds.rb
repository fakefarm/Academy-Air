if Rails.env.development?
	Time.zone = "America/Chicago"
	
	Flight.destroy_all
	
	codes = ['ORD', 'JFK', 'SEA', 'LAX']
	
	20.times do
		departure_code, arrival_code = codes.sample(2) #TODO what is this shorthand syntax called?
		departure_time = rand(8..20)
		flight_number = rand(100.999)
		
		Flight.create number: flight_number,
									departure_code: departure_code,
									arrival_code: arrival_code,
									departs_at: (Date.today + departure_time.hours),
									seats: rand(0..120), 
									distance: 0
									
	end
end
		
		
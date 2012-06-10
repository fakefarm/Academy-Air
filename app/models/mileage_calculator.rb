class MileageCalculator
	CHART = { "JFK-ORD" => 700,
						"ORD-SFO" => 1846,
						"ORD-BOS" => 866,
						"JFK-BOS" => 186,
						"JFK-LAX" => 2475,
						"ORD-LAX" => 2109,		
					}
					
	def initialize(departure_airport_code, arrival_airport_code)
		@departure_airport_code = departure_airport_code
		@arrival_airport_code = arrival_airport_code		
	end
	
	def miles
		chart_key = "#{@departure_airport_code}-#{@arrival_airport_code}"
		return CHART[chart_key]
	end
	
	def duration
	end
end
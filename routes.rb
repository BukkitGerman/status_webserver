module AppRoutes
	def self.included(base)
		base.class_eval do
			get "/data" do
				# matches "GET /posts?title=foo&author=bar"
 				temp = params['temp']
  				hum = params['hum']
				result = "Temperature: " + temp+"\n"
				result += "Huminity: " + hum
				result
			end
		end
	end
end

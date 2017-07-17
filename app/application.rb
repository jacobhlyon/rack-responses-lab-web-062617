

class Application

	def call(env)
		resp = Rack::Response.new

		# Time = DateTime.now.strftime("%H:%M").to_i

		if Time.now.hour < 12
			resp.write "Good Morning!"
		else
			resp.write "Good Afternoon!"
		end

		resp.finish
	end

end
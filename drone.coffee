arDrone = require 'ar-drone'
client = arDrone.createClient()

# Console.log all nav data
# client.on 'navdata', console.log

# Blink some lights
client.animateLeds('snakeGreenRed', 5, 1)

stream = client.getPngStream()

stream.on 'data', (png) ->
	console.log png

# client.takeoff()

# # Take off
# client.after 5000, ->
# 	@takeoff()
# .after 5000, ->
# 	@clockwise 1
# 	# @animate 'turnaround', 5000
# .after 5000, ->
# 	@stop()
# 	@land()
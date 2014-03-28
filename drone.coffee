arDrone = require 'ar-drone'

# Socket server
{Server} = require 'ws'
wss = new Server 
	port: 8080

wss.on 'connection', (ws) ->
	console.log 'new client connected'

	setInterval =>
		ws.send 'hiethan'
	, 1000

# client = arDrone.createClient()

# # Console.log all nav data
# # client.on 'navdata', console.log

# # Blink some lights
# client.animateLeds('snakeGreenRed', 5, 1)

# stream = client.getPngStream()

# stream.on 'data', (png) ->
# 	console.log png


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



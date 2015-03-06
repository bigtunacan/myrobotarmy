require 'artoo'

# NOTE: The Robot ID, displayed as Robot%20CNHNDQKT below,
#   is generated randomly when the server starts.
#
#
# Get a list of the available robots
# curl http://127.0.0.1:4321/api/robots
#
# Get a list of the commands available
# http://127.0.0.1:4321/api/robots/Robot%20CNHNDQKT/devices/sphero/commands
#
# Commands that requires parameters should use a post and pass data as a JSON Content-Type (Sphero roll command shown here)
# curl -H "Content-Type: application/json" --data '{"speed":"90", "direction":"45"}' http://127.0.0.1:4321/api/robots/Robot%20NZYAUZJT/devices/sphero/commands/roll
#
# Commands that don't require parameters can be called with a simple GET request (Sphero stop command shown here)
# curl http://127.0.0.1:4321/api/robots/Robot%20CNHNDQKT/devices/sphero/commands/stop

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-YBB-AMP-SPP'
device :sphero, :driver => :sphero

api :host => '127.0.0.1', :port => '4321'

work do
  puts "Hello from the API running at #{api_host}:#{api_port}..."
end

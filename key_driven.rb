require 'artoo'
require 'byebug'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-YBB-AMP-SPP'
device :sphero, :driver => :sphero

connection :keyboard, adaptor: :keyboard
device :keyboard, driver: :keyboard, connection: :keyboard

work do
  on keyboard, :key => :keypress
end

def keypress(sender, key)
  puts key
  case key
  when 'up'
    sphero.roll 50, 0
  when 'left'
    sphero.roll 50, 90
  when 'down'
    sphero.roll 50, 180
  when 'right'
    sphero.roll 50, 270
  when 's'
    sphero.stop
  when 'q'
    exit
  end
end

#work do
  #every(1.seconds) do
    #sphero.start_calibration
  #end
#end

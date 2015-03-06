require 'artoo'
require 'byebug'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-YBB-AMP-SPP'
device :sphero, :driver => :sphero

connection :keyboard, adaptor: :keyboard
device :keyboard, driver: :keyboard, connection: :keyboard

def keypress(sender, key)
  case key
  when 'q'
    exit
  end
end

def contact(str, coll)
  $direction = $direction + Random.new.rand(45..90)
  $direction = $direction % 360
end

work do
  on keyboard, :key => :keypress
  on sphero, :collision => :contact

  $direction = Random.new.rand(0..360)

  @count = 1
  every(3.seconds) do
    r = Random.new.rand(0..255)
    g = Random.new.rand(0..255)
    b = Random.new.rand(0..255)
    sphero.set_color(r,g,b)
    puts 'direction' + $direction.to_s
    @count += 1
    sphero.roll 75, $direction
  end
end

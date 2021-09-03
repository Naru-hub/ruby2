# class Robot
#   def initialize(name)
#     @name = name
#     @x = @y = 0
#   end

#   def move(x, y)
#     @x += x; @y += y
#   end

#   def to_s
#     "#{@name}: #{@x}, #{@y}"
#   end
# end

# class FlyingRobot < Robot
#   def initialize(name)
#     super
#     @z = 0
#   end

#   def move(x, y, z)
#     super(x, y)
#     @z += z
#   end

#   def to_s
#     super + ",#{@z}"
#   end
# end
# robo1 = FlyingRobot.new("飛行ロボ1号")
# robo1.move(20, 10, 30)
# puts robo1
#飛行ロボ1号: 20, 10, 30


# module Radar
#   def distance_to(other)
#     Math.sqrt((self.x - other.x) ** 2 + (self.y - other.y) ** 2)
#   end
# end

# class Robot
#   include Radar
#   attr_accessor :name, :x, :y

#   def initialize(name)
#     @name = name
#     @x = @y = 0
#   end

#   def move(x, y)
#     @x += x; @y += y
#   end
# end
# robo1 = Robot.new("ロボ1号")
# robo2 = Robot.new("ロボ2号")
# robo2.move(12, 35)
# puts "距離は #{robo1.distance_to(robo2)} です。"
#距離は 37.0 です。


class Robot
  puts "ここも実行されます"
end
robo1 = Robot.new
robo2 = Robot.new
puts "Robot: #{Robot.object_id}"
puts "robo1: #{robo1.object_id}"
puts "robo2: #{robo2.object_id}"
#ここも実行されます
# Robot: 70276759138300
# robo1: 70276759138240
# robo2: 70276759138220

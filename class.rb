class Robot
end

robo1 = Robot.new
p robo1
##<Robot:0x00007fe2e215aa78>

s1 = "hello"
s2 = s1
puts s1.object_id    #70113554985840
puts s2.object_id    #70113554985840
s1.upcase!
puts s2              #HELLO

s1 = "hello"
s2 = s1.dup
puts s1.class
puts s1.kind_of?(String)        #true
puts s1.kind_of?(Object)        #true
puts s1.instance_of?(String)    #true
puts s1.instance_of?(Object)    #false

class Robot
  def move(x, y)
    @x += x; @y += y
  end

  def to_s
    "#{@name}: #{@x},#{@y}"
  end
end

class Robot
  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)
    @x += x; @y += y;
  end

  def to_s
    "#{@name}: #{@x},#{@y}"
  end
end

robo1 = Robot.new("ロボ１号")
robo2 = Robot.new("ロボ2号")
puts robo1
robo2.move(10,20)
puts robo2
#ロボ１号: 0,0
#ロボ2号: 10,20

class Robot
  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x, y)   #パブリックメソッド
    @x += x; @y += y
    crash if @x < 0 || @y < 0
  end

  private
  def crash   #プライベートメソッド
    puts "ドカン!"
  end
end

robo1 = Robot.new("ロボ1号")
robo1.move(200, -100)
robo1.crash
#ドカン!
#class.rb:75:in `<main>': private method `crash' called for #<Robot:0x00007ff2e01c0680 @name="ロボ1号", @y=-100, @x=20(NoMethodError)

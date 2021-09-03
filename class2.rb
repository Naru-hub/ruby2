class Robot
  def name       #名前の呼び出し
    @name
  end

  def name=(name)   #名前の書き込み
    @name = name
  end
end

robo1 = Robot.new
robo1.name ="ロボ1号"
puts robo1.name
#ロボ1号

class Robot
  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @x = @y = 0
    @score = 10
  end
end

robo1 = Robot.new("ロボ1号")
robo2 = Robot.new("ロボ2号")
robo2.score = 90    #スコアを変更
puts robo1.name, robo1.score
puts robo2.name, robo2.score
# ロボ1号
# 10
# ロボ2号
# 90

def change_name(new_name)
  old_name = name         #nameメソッドになる
  name = new_name         #注意!nameはローカル変数になる
  self.name = new_name    #正しいname=メソッドの呼び出し
end


class Shape
  PI = 3.14159

  def self.circle(r)
    r * r * PI
  end
end
puts Shape::PI          #3.14159
puts Shape.circle(5)    #78.53975

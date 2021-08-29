message = "こんにちは"
puts message
num = 123
puts num

message = "こんにちは"
puts message.length   #5

x = "ABC"
y = "DEF"
puts x + y  #ABCDEF

puts "2かける3は#{2 * 3}です。"     #2かける3は6です。
name = "佐藤"
puts "#{name}さん、こんにちは"      #佐藤さん、こんにちは

a = 4; b = "9"
puts a.to_s + b   #49
puts a + b.to_i   #13
puts a * b.to_i   #36

x = 123
s = "xの値は#{x}です。"


animals = ["dog","cat","elephant"]
puts animals[0]   #dog
animals[0]
animals[1] = "bat"   #2番目変更
puts animals[1]   #bat

animals = ["dog","cat","elephant"]
puts animals[5]        #nil
animals[5] = "whale"
puts animals[5]        #whale

cabinet = [123, "hello", false, ["apple", "orange"]]

colors = ["red","blue","yellow","pink"]
puts colors.empty?
colors << "green"
puts colors.length
#false
#5

animals = ["dog","cat","elephant"]
animals = %w(dog cat elephant)

arr = [1,2,3]
puts arr.inspect   #[1, 2, 3]
obj = Object.new
p obj              ##<Object:0x00007f9e1b95cac0>

a = 2; b = 3; c = 4
puts a + b * c        #14 掛け算優先
puts (a + b) * c      #20 割り算優先



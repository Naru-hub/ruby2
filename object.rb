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
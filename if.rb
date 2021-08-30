# print "数を入力してください"
# num = gets.to_i
# b = (0 <= num && num < 10)
# puts b
#数を入力してください6
#true

a = true
b = true
c = false
a || b && c     #true
a or b and c    #false

# print "整数を入力してください : "
# num = gets.to_i
# if num % 2 == 0
#   puts "偶数です"
# end
#整数を入力してください : 100
#偶数です

# print "価格を入力してください。"
# num = gets.to_i
# if num >= 1500
#   puts "送料無料です。"
# elsif 0 < num && num < 1500
#   puts "送料300円です。"
# else
#   puts "入力が間違っています。"
# end
#価格を入力してください。1000
#送料300円です。
#価格を入力してください。1600
#送料無料です。

num = 10
if num % 2 == 0
  message = "偶数です"
end
puts message  #偶数です

def hello
  puts "こんにちは"
  puts "それではまた"
end
hello
#こんにちは
#それではまた

num = 123
def method
  num = 456
  puts num
end
method       #456(メソッド内のnum)
puts num     #123(メソッド外のnum)

def triangle(base,height)
  result = base * height / 2.0
  result
end
area = triangle(11,9)
puts "面積は#{area}です。"
#面積は49.5です。

# def triangle(base, height)
#   return nil if base < 0 || height < 0
#   base * height / 2.0
# end

10.times do |i|
  print i, ","
end
#0,1,2,3,4,5,6,7,8,9,

10.times {|i| print i,","}
#0,1,2,3,4,5,6,7,8,9,

2.upto(6) do |i|
  print i,","
end
#2,3,4,5,6,

6.downto(2) do |i|
  print i,","
end
#6,5,4,3,2,

0.step(10, 2) do |i|
  print i,","
end
#0,2,4,6,8,10,






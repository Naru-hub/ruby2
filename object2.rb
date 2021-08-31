fruits = ["apple", "orange","banana"]
puts "OK" if fruits.include?("banana")   #OK

# print "合言葉 : "
# word = gets.chomp
# if ["apple","orange","banana"].include?(word)
#   puts "OK"
# end
#合言葉 : apple
#OK

numbers = [1,2,3,4,5,6,7,8,9]
puts "OK" if numbers.all? {|item| item > 0}       #すべて0より大きいか
puts "OK" if numbers.any? {|item| item % 2 == 0}  #偶数が含まれるか

numbers = [1,2,3,4,5,6,7,8,9]
number = numbers.detect {|item| item > 5}         #5より大きい数1つ
numbers2 = numbers.find_all {|item| item > 5}     #5より大きい数すべて

fruits = ["apple","orange","banana"]
big_fruits = fruits.map { |item| item.upcase }
p big_fruits   #["APPLE", "ORANGE", "BANANA"]

fruits = ["apple","orange","banana"]
big_fruits = fruits.map(&:upcase)
p big_fruits   ##["APPLE", "ORANGE", "BANANA"] 上記と同じ

population = {
  "France" => 6502700,
  "Germany" => 81768000,
  "Italy" => 60705991
}
puts population["Italy"]               #キーが"Italy"の値
population["Japan"] = 127760000        #新しい要素を追加
puts population["Japan"]               #キーが"Japan"の値
#60705991
#127760000

population = { fr: 65027000, de: 81768000, it: 60705991 }
puts population[:it]
#60705991

# books = {}
# File.open("books.txt", encording: "utf-8") do |f|
#   f.each_line do |line|
#     cols = line.chomp.split(",")
#     books[cols[0]] = cols[1]
#   end
# end

# books.each do |key, val|
#   puts "#{key}, #{val}円"
# end

def triangle(params)
  params[:base] * params[:height] / 2.0
end
area = triangle(height: 3.4, base: 2.3)
puts "三角形の面積 : #{area}"
#三角形の面積 : 3.9099999999999997

range = 1..10     #1から10までの整数
range = 1...10    #1から9までの整数(最後の要素を含めない)
range = "a".."h"  #aからhまでのアルファベットを１文字表す

(1..4).each {|num| puts "7 x #{num} = #{7 * num}"}
# 7 x 1 = 7
# 7 x 2 = 14
# 7 x 3 = 21
# 7 x 4 = 28


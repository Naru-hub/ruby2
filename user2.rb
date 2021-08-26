class User
  def name
    '名前'
  end
end
user = User.new
puts user.name
#名前

object = nil
puts object&.name
#nil

ary1 = ['apple','banana','orange']
puts ary1
#["apple","banana","orange"]

ary2 = %w(apple banana orange)
p ary2
#["apple", "banana", "orange"]

class User
  attr_accessor :name
end

user1 = User.new
user1.name = '大場寧子'
user2 = User.new
user2.name = '小芝美由紀'
user3 = User.new
user3.name = '小田井優'
users = [user1,user2,user3]

names = []
users.each do |user|
  names << user.name
end
p names
#["大場寧子", "小芝美由紀", "小田井優"]

names = users.map do |user|
  user.name
end
p names
#["大場寧子", "小芝美由紀", "小田井優"]

names = users.map {|user|user.name}
p names
#["大場寧子", "小芝美由紀", "小田井優"]

names = users.map(&:name)
p names
#["大場寧子", "小芝美由紀", "小田井優"]


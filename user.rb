class User
  attr_accessor :name, :address, :email

  def profile
    "#{name}(#{address})"
  end
end

user = User.new
puts user.name = "小田井優"
puts user.address = "東京"
puts user.profile      #小田井優(東京)

name = "小田井優"
puts "#{name}"

result = 1 + 2 * 4 / 8
puts result  #2

value = nil
puts value.nil? #true


value = 3
if value == 3
  # valueが3のときここを実行します
end

# nil?を使う例
returt if value.nil?    #valueがnilなら以降の処理をしない
# 儀かどうか調べている例
return if !value        #valueがnilもしくはfalseなら以降の処理をしない

number = 1
if number == 1
  puts '数値は1です'
elsif number == 2
  puts '数値は2です'
else
  puts '数値は1や2以外です'
end
#数値は1です

# ifは条件が成立した節の最後の評価結果を返す
number = 100
message = if number > 50
  puts "numberは50より大きいです"
else
  puts "numberは50以下です"
end
#numberは50より大きいです

# 偽だった時に処理を実行するunless
age = 16
unless age >= 20
  puts "未成年には酒類を提供できません！"
end
# 上をifで表現する
age = 16
if age < 20
  puts "未成年に酒類を提供できません!"
end

# 後置if(条件が成立した時に評価してほしい句の後ろに置く)
# これは出力されます
puts 'おはようございます' if true
# これは出力されません
puts 'お疲れさまでした' if false

# 配列
[1,2,3]

["abc", false, nil, 4, [1,2,3]]

a = [1,2,3]
# 1,2,3と順番に出力します
a.each do |element|
  puts element
end

for element in a
  puts element
end
a = [1,2,3]
a << 4
#123

# ハッシュ
{:tokyo => 13636222, :kanagawa => 9145572}

options = {font_size: 100, color: 'red'}
# 「100」と出力される
puts options[:font_size]   #100

options = {font_size: 100, color: 'red'}
options[:font_family] = 'Arial'
# 「Arial」と出力される
puts options[:font_family]  #Arial

options = {font_size:100, color: 'red'}
options.each do |key,value|
  puts key
  puts value
end
# font_size
# 100
# color
# red

class User
  attr_reader :name, :address, :email
  def initialize(name, address, email)
    @name = name
    @address = address
    @email = email
  end
end
user = User.new("大塚寧子","東京都",nil)
puts user.name

# メソッドの呼び出しに制限をかける
# class Person
#   def initialize(money)
#     @money = money
#   end

#   # 億万長者かどうか返す
#   def billionaire?
#     money >= 1000000000
#   end

#   private

#   def money
#     @money
#   end
# end
# person = Person.new(1000000000)
# person.money
# person.billionaire?


# def name(full: true, with_age: true)
#   n = if full
#     "#{family_name} #{given_name}"
#   else
#     given_name
#   end
#   n << "(#{age})" if with_age
#   n
# end
# person.name => "浦島太郎"

# 価格あるものを抽象化したクラス
class PricedObject
  def total_price
    price * Tax.rate
  end

  def price
    # 「raise NotImplementedError」は機能が実装されていないことを表すエラーを発生させるコードです
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  # 税抜単価 * 数量
  def price
    unit_price * volume
  end
end


class Book
  def title
    '本のタイトル'
  end
end

class Magazine < Book
  def title
    '雑誌のタイトル'
  end
end

magazine = Magazine.new
puts magazine.title
#雑誌のタイトル

class BaseTask
  def puts_message
    puts 'BaseTask のタイトル'
  end
end

class Task < BaseTask
  def puts_message
    super
    puts 'Task のタイトル'
  end
end
task = Task.new
puts task.puts_message
#BaseTask のタイトル
#Task のタイトル

# おしゃべり能力
# module Chatting
#   def chat
#     "hello"
#   end
# end
# def Dog
#   include Chatting
# end
# pochi = Dog.new
# puts pochi.chat

# class Cat
#   include Chatting
# end

# class Human
#   include Chatting
# end

# おしゃべり能力
module Chatting
  def chat
    "hello"
  end
end

# 泣く能力
module Weeping
  def weep
    "しくしく"
  end
end

class Human
include Chatting
include Weeping
end

taro = Human.new
puts taro.chat   #hello
puts taro.weep   #しくしく


価格についての共通機能をまとめたモジュール
module PriceHolder
  def total_price
    price * Tax.rate
  end
end

class Product
  include PriceHolder
  attr_accessor :price
end

class OrderedItem
  include PriceHolder
  attr_accessor :unit_price, :volume
  # 税抜単価 * 数量
  def price
    unit_price * volume
  end
end
class Tax
  def self.rate
    1.08
  end
end
class Book < ApplicationRecord
  has_many :authors
end

number ||= 10
number ||= (number = 10)
def children
  @child ||= []
end

# 0 年から 2020 年までのうるう年を出力する関数を作成してください。
# うるう年となる条件は以下の通りである。
# - 4で割り切れる年は原則うるう年である
# - ただし、100 で割り切れる年は原則うるう年ではない
# - ただし、400 で割り切れる年はうるう年である
  def uruu(n)
    if n % 4 != 0
      "平年です!!"
    elsif n % 100 == 0 && n % 400 != 0
      "平年です"
    else
      "うるう年です!!"
    end
  end
  puts uruu(1900)
  puts uruu(1980)
  puts uruu(2000)
  puts uruu(2019)

  # 平年です
  # うるう年です!!
  # うるう年です!!
  # 平年です!!

  # def uruu(n)    これだと全部うるう年になる
  #   if n % 4 == 0
  #     "うるう年です!!"
  #   elsif n % 100 == 0
  #     "平年です"
  #   else n % 400 == 0
  #     "うるう年です!!"
  #   end
  # end

  # puts uruu(1900)
  # puts uruu(1980)
  # puts uruu(2000)
  # puts uruu(2019)

# Rubyにはうるう年を判定するleapメソッドがある
require 'date'
def uruu(n)
  if Date.new(n).leap?
    "うるう年です!!"
  else
    "平年です!!"
  end
end
puts uruu(1900)
puts uruu(1980)
puts uruu(2000)
puts uruu(2019)

# leapメソッドはうるう年ならtrue、うるう年でなければfalseを返すメソッド
# このメソッドを使うためには日付を扱うためのライブラリーであるDateライブラリーを読み込む必要があり、最初にrequre ‘date’ として読み込み。
# 後は条件分岐で”うるう年”か”平年”かを分けて表示させれば良い

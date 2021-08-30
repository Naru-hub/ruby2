arr = ["apple", "orange", "grape"]
arr.each do |item|
  print item + ","
end
#apple,orange,grape,

arr = ["apple", "orange", "grape"]
arr.each_with_index do |item, i|
  print "#{i}.#{item}"
  print "," if i < arr.length - 1
end
#0.apple,1.orange,2.grape

# File.open("output.txt", "w", encoding: "utf-8") do |file|
#   file.puts "こんにちは"
# end

begin
  File.open("some.txt", "w", encoding: "utf-8") do |file|
    print f.gets
  end
rescue
  warn "エラー発生！"
  end
  #エラー発生！


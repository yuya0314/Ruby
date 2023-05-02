require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
num = gets.chomp
number_select=num.tr('０-９ａ-ｚＡ-Ｚ','0-9a-zA-Z').to_i

if number_select == 1
  puts "拡張子を除いたファイルを入力してください"
  text_name1 = gets.chomp
  p "メモしたい内容を記入してください"
  p "完了したらCtrl＋D をおします"
  text_content = STDIN.read
  CSV.open("#{text_name1}.csv","a")do|csv|
    csv<<["#{text_content}"]
  end
elsif number_select == 2
  puts "編集したい既存のファイル名を入力してください(拡張子除く)"
  text_name2 = gets.chomp
  p "メモしたい内容を記入してください"
  p "完了したら Ctrl＋D をおします"
   re_text = STDIN.read
   CSV.open("#{text_name2}.csv","a")do|csv|
    csv<<["#{re_text}"]
  end
 else puts"エラーが発生しました"
end 
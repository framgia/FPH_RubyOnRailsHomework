# homework05
# 1. 割り切れない計算を行い、if文を使用し、
# 割り切れない条件式を作成してください。その場合、アウトプットは、'割り切れませんでした'を表示してください。

amari = 10 % 3

if amari != 0
  puts "割り切れませんでした"
end


# 2. 上記の続き
# 計算式は割り切れても、割り切れなくても大丈夫です。
# 何か式を作成し、if文、else文を使い2つのパターンに分けてください。

amari = 10 % 4 #ここは自由に変更してください。

if amari != 0
  puts "割り切れませんでした"
else
  puts "割り切れました"
end

# 3. numberが100の場合、80以上の場合、80以下の場合で条件文を作成してください。
# なお80は80以上に含むものとします。

number = 80 #自由に変更してください。

if number == 100
  puts '満点です'
elsif number >= 80
  puts 'いいね'
elsif number < 80
  puts 'だめだね'
end


# 4. 口頭で説明します。

puts "性別を教えて下さい。(man:1 woman:2)"
sex = gets.to_i
 
puts "年齢を教えて下さい。"
age = gets.to_i
  
if age > 20 && sex == 1 
  puts "あなたは成人男性です。"
elsif age < 20 && sex == 1 then
  puts "あなたは成人していない、男性です。"
elsif age > 20 && sex == 2 then
  puts "あなたは成人女性です。"
elsif age < 20 && sex == 2 then
  puts "あなたは成人していない、女性です。"
else
  puts "入力情報が不正です。"
end


# 5. 口頭で説明します

puts "Please enter any of 1 to 12"
month = gets.to_i
 
case month
 
when 3,4,5 
  puts "Spring"
when 6,7,8 
  puts "Summer"
when 9,10,11 
  puts "Autumn"
when 12,1,2 
  puts "Winter"
else
  puts "Error"
end





# 参考程度に
# 1.upto(10) do |n|
#  puts "■" * n
# end























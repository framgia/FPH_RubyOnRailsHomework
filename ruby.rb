# homework04

# 1. 変数xに'Hello World'を入れ、出力してください。
x = 'Hello World'
puts x


# 2. 変数yに'こんにちは'をいれ、出力してください。次に同じyに'こんばんは'をにゅうりょくしてください。 
y = 'こんにちは'
puts y
y = 'こんばんは'
puts y


# 3. 文字の連結
# 変数greetingに'こんにちは'をいれ、変数nameにあなたの名前を入れてください。そしてその文字同士を連結させてください。
greeting = 'こんにちは'
name = '佐野'
puts greeting + name


# 4. gets.chompを使用し、受け取った文字を表示させてください。
name = gets.chomp
puts name


# 5. 入力された文字列をgets.chompを用いて受け取り、その文字列の文字数と反転した文字列を表示
puts '好きな文字列を入力してください'
x = gets.chomp
puts x.length
puts x.reverse



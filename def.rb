
# 1. 1~100までの足し算を行う
n   = 1
sum = 0
while n < 101
  sum += n
  n += 1
end
puts(sum)


# 2. 好きな文字を10回繰り返し表示させてください。
10.times do
  puts "dog" #好きな文字を選んでください
end


# 3. arrayという配列を順番に表示させてください。
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.each do |num|
	p num
end


# 4. 6より大きい配列を順番に表示してください
array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array2.each do |num|
  if num > 6
    p num
  end
end


# 5. メソッドの自作 名前と趣味を表示させてください
def introduce
    puts '名前：佐野 鷹'
    puts '趣味：ボクシング'
end
introduce


# 6. returnを使っての計算
def add(a,b)
    return a + b
end
sum = add(3,9)
puts sum


# 7. 末尾に?がつく場合の処理
# 真偽値を返すメソッドは、メソッド名の末尾に「?」をつける慣習があるので、覚えておきましょう。
def raku?(number) # 後々使う概念
    return number > 0
end
puts raku?(4)


# 5. defと条件分岐の組み合わせ
def wao(number)
    if number > 100
        puts 'waowao'
    else
        puts 'wwwwww'
    end
end
puts wao(20)

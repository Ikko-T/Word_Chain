puts "めんそ〜れ〜"
puts "----------------------------------------------"
sleep 2.0
puts "わたくし、しりとり名人の「シーサー・ゴヤ」と申しまする。"
puts "----------------------------------------------"
sleep 2.0
favorite_food = ["ゴーヤー", "サーターアンダギー", "ソーキそば", "フーチャンプルー", "ちんすこう"].sample
puts "好きな食べ物は#{favorite_food}です。"
puts "----------------------------------------------"
sleep 2.0
puts "わたしとのしりとり対決前にゲームの説明をします。"
puts "----------------------------------------------"
sleep 2.0
puts "沖縄県市町村とその地区名しりとりです。"
sleep 2.0
puts "ルールは、"
sleep 1.5
puts "語尾が「ん」で終った場合、"
sleep 2.0
puts "同じ言葉を二度繰り返した場合、"
sleep 2.0
puts "または制限時間10秒を過ぎたら負けです。"
puts "----------------------------------------------"
sleep 2.0
puts "それでは先行後攻を勝手に決めます！"
puts "----------------------------------------------"
sleep 2.0
who_goes_first = ["あなたは先行です", "あなたは後攻です"].sample
case 
when who_goes_first == "あなたは先行です"
    puts "#{who_goes_first}"
    puts "入力してください。"
    puts "----------------------------------------------"
    puts "あなた: "
    gets.chomp
    puts "----------------------------------------------"
when who_goes_first == "あなたは後攻です"
    puts "#{who_goes_first}"
    puts "----------------------------------------------"
    sleep 1.5
    shisa_select = ["りんご", "なし", "マンゴー"].sample
    puts "シーサー: #{shisa_select}"
    puts "----------------------------------------------"
end

puts "あなた: "
gets.chomp

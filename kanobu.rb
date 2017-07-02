# encoding: utf-8
# консольная игра камень - ножницы - бумага

answers = ["камень", "ножницы", "бумага"]
pc_choice = rand(3).to_s

puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
user_choice = gets.chomp

puts "Вы выбрали: " + answers[user_choice.to_i]
puts "Компьютер выбрал: " + answers[pc_choice.to_i]

if (user_choice == pc_choice)
  puts "Победила дружба"
  exit
elsif %w(01 12 20).include?(user_choice + pc_choice)
  puts "Победил пользователь"
else
  puts "Победил компьютер"
end

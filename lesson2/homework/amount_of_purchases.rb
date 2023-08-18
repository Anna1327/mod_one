# frozen_string_literal: true

# 6 amount of purchases

amount_of_purchases = {}

loop do
  puts "Please write name of product: "
  name_of_product = gets.chomp

  break if name_of_product == "stop"

  puts "Please write unit price: "
  unit_price = gets.chomp.to_i
  puts "Please write number of purchased: "
  number_of_purchased = gets.chomp.to_i

  if amount_of_purchases.include?(name_of_product)
    amount_of_purchases[name_of_product][:unit_price] = unit_price
    amount_of_purchases[name_of_product][:number_of_purchased] += number_of_purchased
    amount_of_purchases[name_of_product][:sum] = amount_of_purchases[name_of_product][:unit_price] * 
      amount_of_purchases[name_of_product][:number_of_purchased]
  else
    amount_of_purchases[name_of_product] = { 
      unit_price: unit_price, 
      number_of_purchased: number_of_purchased, 
      sum: unit_price * number_of_purchased 
    }
  end
end

sum_of_all_products = 0
amount_of_purchases.each do |_, value|
  sum_of_all_products += value[:sum]
end

puts "Your purchases: #{amount_of_purchases}, sum of all products: #{sum_of_all_products}"

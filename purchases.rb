purchases = Hash.new
sum = 0

loop {
  print "Введите название товара (или \"стоп\", если хотите закончить): "
  product_name = gets.chomp
  break if product_name == "стоп"
  print "Введите цену за ед. товара: "
  price = gets.chomp.to_f.round(2)
  print "Введите количество купленного товара: "
  quantity = gets.chomp.to_f.round(2)

  purchases[product_name] = { price: price, quantity: quantity }
}

purchases.each { |name, info|
  puts "Название товара: #{name}, 
  в корзине #{info[:quantity]} шт. по цене #{info[:price]} за ед. товара.
  Итоговая сумма за товар: #{info[:quantity] * info[:price]}"
  sum += info[:quantity] * info[:price]
}

puts "-----------------------------------
Итоговая стоимость покупок: #{sum}"
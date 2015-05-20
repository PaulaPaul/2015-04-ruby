# Inventory tracker

# Inventory system should track the count of 4 items. The program should output the current items in a numbered list, 
# and their current counts to the screen and then prompt the user to enter which item should be edited. 
# After the user chooses the item to edit, 
# the users should be allowed to enter a new inventory count for the item.


class Inventory_Item
	attr_accessor :name, :quantity

	def initialize(name, quantity)
		@name = name
		@quantity = quantity
	end

	def adjust_quantity(num)
	  	if num > @quantity
	  		puts "Sorry, we only have #{@quantity} of #{name} items in stock, you can't have #{num}!"
	  		puts " "
	  	else
	  		@quantity = @quantity - num
		end
	end

end


# Ask the user for the four inventory items and quantities
inventory_array = []
input_names = []
puts "Hi Boss!  Let's do inventory."
puts "Please enter the names of your inventory items (e.g. birds,bees,flowers,trees - no spaces please):"
input_names = gets.chomp.split(/,/) #make an array out of the user input names

#create inventory item objects for each named item
input_names.each_with_index do |itemname, index|
	puts "Please enter the starting inventory value for #{itemname}:"
	qty = gets.chomp.to_i
	inventory_array[index] = Inventory_Item.new(itemname, qty)
end

# print an initial inventory report, then ask for adjustments until the user quits
system "clear" or system "cls"
puts "Initial Inventory report:"
inventory_array.each_with_index do |inv_item, index|
	puts "#{inv_item.name} inventory equals #{inv_item.quantity}"
end
puts " "

quit = false
while quit == false
	puts "enter the number of the inventory item you want to adjust:" 
	inventory_array.each_with_index do |inv_item, index|
		puts "     #{index + 1}: #{inv_item.name}"
	end
	puts "or enter 0 to exit"
	choice = gets.chomp.to_i - 1
	if choice < 0
		break
	elsif choice < 0 || choice > inventory_array.length - 1
		puts "Sorry, enter a valid choice"
	else
		puts "How much of #{inventory_array[choice].name} do you need? (enter an integer value)"
		amount = gets.chomp.to_i
		inventory_array[choice].adjust_quantity(amount)
		puts "Adjusted Inventory report:"
		inventory_array.each_with_index do |inv_item, index|
			puts "#{inv_item.name} inventory equals #{inv_item.quantity}"
		end
		puts " "
	end

end


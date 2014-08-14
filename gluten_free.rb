# pizza = ["cheese", "gluten" ,"tomatoes"]
# pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
# water = ["h", "h", "o"]


# class Person
# 	def initialize(name, gender, allergic)
# 		@name = name
# 		@gender = gender
# 		@stomach = []
# 		@allergic = allergic
# 	end

# 	def eat(food)
# 		food.each do |ingredients|
# 			@stomach.push(ingredients)
# 		end
# 	end

# 	def allergy
# 		result = @stomach & @allergic
# 		if result.length > 0
# 			puts "See the doctor you are going to die"
# 		else
# 			puts "You are safe to eat this"
# 		end
# 	end
# end

# angga = Person.new("Angga", "male", ["gluten", "shrimp", "pork"])
# angga.eat(pizza)
# puts angga.allergy

########

pizza = ["cheese", "gluten" ,"tomatoes", "pork"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]


class Person
	def initialize(name, gender, allergic)
		@name = name
		@gender = gender
		@stomach = []
		@allergic = allergic
	end

	def eat(food)
		food.each do |ingredients|
			@stomach.push(ingredients)
		end
	end

	def check_food(food)
			result = food & @allergic
			if result.length > 0
				ingredients = result.join(", ")
				puts "You can not eat these ingredients: #{ingredients}"

				puts "Would you like to remove these ingredients (yes/ no)"
				response = gets.chomp
				if response == "yes"
					removed_food = food - result
					puts "Your new food is made of #{removed_food.join(" & ")}"
					eat(removed_food)
				else
					puts "You should probably go to the doctor after you eat this #{ingredients}"
					eat(food)
				end
			else
				puts "You are safe to eat this food"
				eat(food)
			end
		end
	end

	

	

angga = Person.new("Angga", "male", ["gluten", "shrimp", "pork"])
angga.check_food(pizza)












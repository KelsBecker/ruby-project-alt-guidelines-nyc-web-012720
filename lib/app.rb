


@toppings = []
def greeting
    puts "\n\n\n\n\n\n\n\n"
    puts "Welcome To Ice Cream Bot 22.0\n"
    puts "Please enter your name to start an order!"
    name = gets.chomp
    @user = User.find_or_create_by(name: name)
end

def ice_cream_list #returns numerical list of ice cream flavors
    flavor_list =IceCream.all.map {|ice_cream| ice_cream.flavor}
    flavor_list.each_with_index{|value, index| puts "#{index+1}. #{value}"}
end

def select_ice_cream_flavor #allow user to select ice cream flavor
    puts "Pick a flavor from the following list\n\n"
    puts "To select your flavor, type your selection"
    ice_cream_list
    ic_flavor = gets.chomp
    @ic = IceCream.find(ic_flavor.to_i)
end

def topping_list #returns numerical list of topping flavors
    topping_list = Topping.all.map {|topping| topping.name}
    topping_list.each_with_index{|value, index| puts "#{index+1}. #{value}"}
end

def select_toppings #allows user to select ice cream topping
    puts "Pick a topping from the following list\n\n"
    puts "To select your topping, type your selection"
    topping_list
    topping_choice = gets.chomp
    topping = Topping.find(topping_choice)
    @toppings << topping
    puts "Would you like to add another topping? (y/n)"
    input = gets.chomp 
    if input == "y"
        select_toppings
    elsif input == "n"
        return
    else 
        puts "invalid choice"
        return
    end 
end

def delete_order #deletes Sundae from database
    puts "No Problem!\n\n"
    puts "What's the name on the order?"
    user_name = gets.chomp 
    user = User.find_by(name: user_name)
    sundae = Sundae.find_by(user_id: user.id)
    sundae.destroy
end  

def update_order #allows user to change ice cream flavor
    puts "Lets Update Your Order!\n\n"
    puts "What's the name on the order? "
    user_name = gets.chomp 
    user = User.find_by(name: user_name)
    sundae = Sundae.find_by(user_id: user.id) 
    puts "Pick a new flavor"
    ice_cream_list
    @new_flavor = gets.chomp
    updated_flavor = IceCream.find_by(flavor: @new_flavor)
    sundae.update(ice_cream_id: updated_flavor.id)
end 

def finalize_order # user can officially create sundae, delete order, or update flavor
    puts "Are You happy with your order?\n\n"
    puts "Please enter: 1 to Confirm, 2 to Delete, or 3 to change your flavor"
    user_input = gets.chomp
    case
    when user_input == "1" 
        sundae  = Sundae.create(user_id: @user.id, ice_cream_id: @ic.id)
        @toppings.each {|topping| sundae.toppings.push(topping)}
        @toppings = []
        t = Sundae.last.toppings.each{|s| sundae.toppings}
        mt = t.map{|topping| topping.name}
        result = mt.join(" ,")
        puts "Enjoy your Delicious Sundae with #{@ic.flavor} ice cream, #{result}!" 
    when user_input == "2"
        delete_order
        puts "Your Order is Canceled"
    when user_input == "3"
        update_order
        puts "Enjoy your Sundae with #{@new_flavor} ice cream!"
    end

    # def run 
    #     greeting
    #     select_ice_cream_flavor
    #     select_toppings
    #     finalize_order
    # end
    # run
end
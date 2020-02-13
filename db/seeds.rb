IceCream.destroy_all
Topping.destroy_all
Sundae.destroy_all
User.destroy_all

van = IceCream.create(flavor: "Vanilla")
choc = IceCream.create(flavor: "Chocolate")
straw = IceCream.create(flavor: "Strawberry")
pist = IceCream.create(flavor: "Pistachio")
cdi = IceCream.create(flavor: "Cookie Dough")
rr = IceCream.create(flavor: "Rocky Road")
pb = IceCream.create(flavor: "Peanut Butter")
mcc = IceCream.create(flavor: "Mint Chocolate Chip")
bp = IceCream.create(flavor: "Butter Pecan")
cc = IceCream.create(flavor: "Cherry Cordial")

t1 = Topping.create(name: "Rainbow Sprinkles")
t2 = Topping.create(name: "Hot Fudge")
t3 = Topping.create(name: "Whipped Cream")
t4 = Topping.create(name: "Fruity Pebbles")
t5 = Topping.create(name: "Almonds")
t6 = Topping.create(name: "Peanuts")
t7 = Topping.create(name: "Strawberries")
t8 = Topping.create(name: "Marshmallows")
t9 = Topping.create(name: "Gummy Bears")
t10 = Topping.create(name: "M&M's")

u1 = User.create(name: "Yoan")
u2 = User.create(name: "Steven")

a = Sundae.new()
a.user = u1
a.ice_cream = choc 
a.save

b = Sundae.new()
b.user = u2
b.ice_cream = rr
b.save 

a.toppings << t1 << t2 << t3 << t4
b.toppings << t3 << t5 << t8 << t9
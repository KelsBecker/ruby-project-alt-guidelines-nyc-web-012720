require_relative '../config/environment'
require 'tty-prompt'

def run 
    greeting
    select_ice_cream_flavor
    select_toppings
    finalize_order
end
run











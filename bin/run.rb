require_relative '../config/environment'
require 'tty-prompt'
@@prompt = TTY::Prompt.new


cli = CommandLine.new
cli.greeting
    choice = true
    while choice do
        cli.select_ice_cream_flavor
        cli.select_toppings
        cli.finalize_order
        choice = @@prompt.yes?("Would you like another Sundae?")
    end










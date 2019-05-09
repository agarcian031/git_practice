require "colorize"
require "pry"
require "rufo"

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Enter git command".colorize(:yellow)
  puts "2: Exit".colorize(:green)
  choice = gets.to_i
  sleep(2)
  print `clear`
  sleep(3)
  case choice
  when 1
    puts "Enter git command".colorize(:magenta)
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using our program".colorize(:blue)
    exit
  else
    puts "Invalid input".colorize(:red)
    sleep(2)
    clear
    menu
  end
end

menu

require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}

# input = ARGV

# my_option = input[0]
# input = input[1..-1].join(" ")

# case my_option
# when "add"
#   TaskController.add(input)
# when "list"
#   TaskController.list
# when "delete"
#   TaskController.delete(input)
# when "completed"
#   TaskController.update(input)
# else
#   puts " wrong input"
# end


case ARGV[0]
    when "add"
      TaskController.add(ARGV[1..-1].join(" "))
    when "delete"
      TaskController.delete(ARGV[1]) #=> taskcontroller.delete(3)
    when "list"
      TaskController.list
  when "completed"
  	TaskController.update(ARGV[1])
  else
  	puts "The input is wrong!"
end

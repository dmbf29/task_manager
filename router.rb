class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What would you like to do?"
      puts "1. List tasks"
      puts "2. Add task"
      puts "3. Mark task as done"
      puts "4. Delete task"
      choice = gets.chomp.to_i
      dispatch_action(choice)
    end
  end

  def dispatch_action(choice)
    case choice
    when 1 then @controller.list_tasks
    when 2 then @controller.add_task
    when 3 then @controller.mark_task
    when 4 then @controller.delete_task
    end
  end
end

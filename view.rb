class View
  # tasks from the repo
  def display(tasks) # an array of INSTANCES
    tasks.each_with_index do |task, index|
      checkbox = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{checkbox} - #{task.title}"
    end
  end

  def ask_user_for_title
    puts "What is your task?"
    title = gets.chomp
    return title
  end

  def ask_user_for_index
    puts "What number would you like to delete?"
    index = gets.chomp.to_i - 1
    return index
  end

  def ask_user_for_done
    puts "What number have you done?"
    index = gets.chomp.to_i - 1
    return index
  end
end

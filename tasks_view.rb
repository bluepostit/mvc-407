class TasksView
  # STATE:
  # - none
  # BEHAVIOR:
  # - display list of tasks with index
  # - ask user for task title
  # - display a task's status
  # - ask user for task index

  def list_tasks(tasks)
    if tasks.count.zero?
      puts "\nYou have no tasks!\n"
      return
    end

    puts "\n ~~~ YOUR TASKS ~~~"
    tasks.each_with_index do |task, index|
      done = task.done? ? '[x]' : '[ ]'
      puts "#{index + 1}. #{done} #{task.title}"
    end
    puts "\n"
  end

  def ask_user_for_title
    puts "What is the title? "
    gets.chomp
  end

  def ask_user_for_index
    puts "Select a task by number"
    gets.chomp.to_i - 1
  end
end

class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # show the user menu
      # get user choice of action
      # dispatch to controller
      display_menu
      action = get_user_choice
      dispatch(action)
    end
  end

  private

  def display_menu
    puts "  ---- MENU ----"
    puts "1. List all tasks"
    puts "2. Add a task"
    puts "3. Mark a task as done"
    puts "4. Remove a task"
  end

  def get_user_choice
    puts "Please select an action by number"
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    end
  end
end

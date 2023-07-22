# frozen_string_literal: true

# The class that contains the factory for creating new tasks

class Task

  attr_accessor :task_name, :task_description, :task_due_date, :task_status

  def initialize

  end

  def id_check_io
    print "Hello, please enter a username and password to access the ToDo List - Or Type N To Create A New User"
  end

  # def enter_task_description
  #   print "Enter a description for the task: "
  #   task_description = enter_task_description.
  # end



  def enter_task_due_date
    print "Enter the due date for this task (YYYY-MM-DD): "
  end

  def enter_task_status
    print "Enter the status of the task (e.g., 'not started', 'in progress', 'completed'): "
  end

  def display_contents
    # Prints list of instanced variables 
  end

end

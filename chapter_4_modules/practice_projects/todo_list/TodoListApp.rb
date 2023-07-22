# frozen_string_literal: true

require_relative "classes/task"
require_relative "classes/input_output"
require_relative "classes/todo_list"
require_relative "classes/User"
require_relative "classes/app_window" # Require app_window.rb for the UI

# main application file'

class TodoListApp
  def initialize
    @io = InputOutput.new
    @app_window = AppWindow.new
  end

  def run
    welcome = @io.display_welcome_message
    @app_window.add_text(welcome, x: 20, y: 20, size: 20, color: "green") # Display the welcome message

  end
end

app = TodoListApp.new
app.run
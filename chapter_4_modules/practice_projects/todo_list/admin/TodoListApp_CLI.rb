# frozen_string_literal: true

require_relative "classes/es/task"
require_relative "classes/input_output"
require_relative "classes/todo_list"
require_relative "classes/User"
require_relative "classes/app_window" # Require app_window.rb for the UI

# main application file

class TodoListApp
  def initialize
    @io = InputOutput.new
  end
  def run 
    logged_in = false
    until logged_in
      case @io.prompt_login_or_signup
      when :login
        login_attempts = 0
        while login_attempts < 3
          begin
            @user = User.login(@io.prompt_username, @io.prompt_password)
            if @user
              logged_in = true
              break
            else
              raise 'Invalid credentials'
            end
          rescue
            login_attempts += 1
            puts "Invalid username or password. Please try again."
          end
        end

        if login_attempts >= 3
          puts "Too many failed login attempts. Please try again later."
        end
      when :signup
        @user = User.create(@io.prompt_username, @io.prompt_password)
        logged_in = true

      else
        puts "Invalid option. Please enter 'l' to log in or 's' to sign up."
      end

    end


    # ...
  end

end

app = TodoListApp.new
app.run


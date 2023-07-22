# frozen_string_literal: true

# the class that handle all the logic and control flow

class InputOutput

  def display_welcome_message
    "Welcome To The Todo List App!"
  end

  def prompt_login_or_signup
    window_login_prompt = "Do you want to [l]og in or [s]ign up?"
    choice = gets.chomp.downcase

    case choice
    when "l"
      puts "Login Chosen"
      return :login
    when "s"
      puts "Signup Chosen"
      return :signup
    else
      puts "Invalid choice. Please enter 'l' to log in or 's' to sign up."
      prompt_login_or_signup  # Ask again if the user entered something unexpected
    end
  end

  def prompt_username
    puts "Please enter your username: "
    gets.chomp
  end

  def prompt_password
    puts "Please enter your password: "
    gets.chomp
  end



end



